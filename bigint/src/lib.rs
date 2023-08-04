extern crate num;
use num::bigint::{BigUint, ToBigUint};

use wgpu::util::DeviceExt;
use wgpu::ComputePipelineDescriptor;

pub fn bigint_convert(source: &str) -> Vec<u32> {
    // let mut number = source.parse::<BigUint>().unwrap();
    // let mut temp_vector : Vec<u32>= Vec::new();

    // while number >= 0 {
    //     temp_vector.push((number & 0xffff_ffff.to_biguint().unwrap()) as u32);
    //     number = number >> 32;
    // }
    // temp_vector

    return source.parse::<BigUint>().unwrap().to_u32_digits()
}

pub fn sum(lhs: &str, rhs: &str) -> Vec<u32> {
    let l1 =  bigint_convert(lhs);
    let r1 = bigint_convert(rhs);

    // let mut l1_len_vec : Vec<u32> = Vec::new();
    // let mut r1_len_vec : Vec<u32> = Vec::new();

    // l1_len_vec.push(l1.len() as u32);
    // r1_len_vec.push(r1.len() as u32);

    // let value = l1_len_vec.into_iter().chain(l1.into_iter()).chain(r1_len_vec.into_iter()).chain(r1.into_iter()).collect::<Vec<u32>>();

    return pollster::block_on(run(&l1,&r1, "bigint_sum"));
}

pub async fn run(source1: &Vec<u32>, source2: &Vec<u32>, entry_point: &str) -> Vec<u32> {
    let total_src_sum = source1.len() + source2.len();
    // native endian bytes
    let src1: Vec<u8> = source1
        .clone()
        .into_iter()
        .flat_map(u32::to_ne_bytes)
        .collect::<Vec<_>>();

    let src2: Vec<u8> = source2
        .clone()
        .into_iter()
        .flat_map(u32::to_ne_bytes)
        .collect::<Vec<_>>();

    let instance = wgpu::Instance::new(wgpu::InstanceDescriptor {
        backends: wgpu::Backends::all(),
        dx12_shader_compiler: Default::default(),
    });
    let adapter = instance
        .request_adapter(&wgpu::RequestAdapterOptions {
            power_preference: wgpu::PowerPreference::default(),
            compatible_surface: None,
            force_fallback_adapter: false,
        })
        .await
        .unwrap();

    let (device, queue) = adapter
        .request_device(
            &wgpu::DeviceDescriptor {
                label: None,
                // was TIMESTAMP before
                features: wgpu::Features::empty(),
                limits: wgpu::Limits::default(),
            },
            None,
        )
        .await
        .unwrap();

    let shader = device.create_shader_module(wgpu::ShaderModuleDescriptor {
        label: Some("Shader"),
        source: wgpu::ShaderSource::Wgsl(include_str!("bigint.wgsl").into()),
    });

    let bind_group_layout = device.create_bind_group_layout(&wgpu::BindGroupLayoutDescriptor {
        label: None,
        entries: &[wgpu::BindGroupLayoutEntry {
            binding: 0,
            count: None,
            visibility: wgpu::ShaderStages::COMPUTE,
            ty: wgpu::BindingType::Buffer {
                has_dynamic_offset: false,
                min_binding_size: None,
                ty: wgpu::BufferBindingType::Storage { read_only: false },
            },
        }],
    });
    let bind_group_layout_2 = device.create_bind_group_layout(&wgpu::BindGroupLayoutDescriptor {
        label: None,
        entries: &[wgpu::BindGroupLayoutEntry {
            binding: 1,
            count: None,
            visibility: wgpu::ShaderStages::COMPUTE,
            ty: wgpu::BindingType::Buffer {
                has_dynamic_offset: false,
                min_binding_size: None,
                ty: wgpu::BufferBindingType::Storage { read_only: false },
            },
        }],
    });

    let layout = device.create_pipeline_layout(&wgpu::PipelineLayoutDescriptor {
        label: Some("pipeline_layout"),
        // defines the interface between a set of resources bound in GPUBindGroup
        bind_group_layouts: &[&bind_group_layout, &bind_group_layout_2],
        push_constant_ranges: &[],
    });

    let compute_pipeline = device.create_compute_pipeline(&ComputePipelineDescriptor {
        label: Some("compute pipeline"),
        layout: Some(&layout),
        module: &shader,
        entry_point: entry_point,
    });

    let readback_buffer = device.create_buffer(&wgpu::BufferDescriptor {
        label: None,
        size: src1.len() as wgpu::BufferAddress,
        // can be read to CPU, and can be copied from storage buffer
        usage: wgpu::BufferUsages::MAP_READ | wgpu::BufferUsages::COPY_DST,
        mapped_at_creation: false,
    });

    let readback_buffer2 = device.create_buffer(&wgpu::BufferDescriptor {
        label: None,
        size: src2.len() as wgpu::BufferAddress,
        // can be read to CPU, and can be copied from storage buffer
        usage: wgpu::BufferUsages::MAP_READ | wgpu::BufferUsages::COPY_DST,
        mapped_at_creation: false,
    });

    let s1_buffer = device.create_buffer_init(&wgpu::util::BufferInitDescriptor {
        label: Some("Fp write"),
        contents: &src1,
        usage: wgpu::BufferUsages::STORAGE
            | wgpu::BufferUsages::COPY_DST
            | wgpu::BufferUsages::COPY_SRC,
    });

    let s2_buffer = device.create_buffer_init(&wgpu::util::BufferInitDescriptor {
        label: Some("Fp write2"),
        contents: &src2,
        usage: wgpu::BufferUsages::STORAGE
            | wgpu::BufferUsages::COPY_DST
            | wgpu::BufferUsages::COPY_SRC,
    });

    // let timestamp_buffer = device.create_buffer(&wgpu::BufferDescriptor {
    //     label: Some("Timestamps buffer"),
    //     size: 16,
    //     usage: wgpu::BufferUsages::MAP_READ | wgpu::BufferUsages::COPY_DST,
    //     mapped_at_creation: true,
    // });
    // timestamp_buffer.unmap();

    let bind_group = device.create_bind_group(&wgpu::BindGroupDescriptor {
        label: None,
        layout: &bind_group_layout,
        entries: &[
        wgpu::BindGroupEntry {
            binding: 0,
            resource: s1_buffer.as_entire_binding(),
        }
        ],
    });
    let bind_group_2 = device.create_bind_group(&wgpu::BindGroupDescriptor {
        label: None,
        layout: &bind_group_layout_2,
        entries: &[
        wgpu::BindGroupEntry {
            binding: 1,
            resource: s2_buffer.as_entire_binding(),
        }
        ],
    });


    // let queries = device.create_query_set(&wgpu::QuerySetDescriptor {
    //     label: None,
    //     count: 2,
    //     ty: wgpu::QueryType::Timestamp,
    // });

    let mut encoder =
        device.create_command_encoder(&wgpu::CommandEncoderDescriptor { label: None });

    {
        let mut cpass = encoder.begin_compute_pass(&wgpu::ComputePassDescriptor { label: None });
        cpass.set_bind_group(0, &bind_group, &[]);
        cpass.set_bind_group(1, &bind_group_2, &[]);
        cpass.set_pipeline(&compute_pipeline);
        // cpass.write_timestamp(&queries, 0);
        // this makes the local invocation id and workgroup Size
        cpass.dispatch_workgroups(1, 1, 1);
        // cpass.write_timestamp(&queries, 1);
    }

    encoder.copy_buffer_to_buffer(
        &s1_buffer,
        0,
        &readback_buffer,
        0,
        src1.len() as wgpu::BufferAddress,
    );

    encoder.copy_buffer_to_buffer(
        &s2_buffer,
        0,
        &readback_buffer2,
        0,
        src2.len() as wgpu::BufferAddress,
    );
    // encoder.resolve_query_set(&queries, 0..2, &timestamp_buffer, 0);

    queue.submit(Some(encoder.finish()));
    let buffer_slice = readback_buffer.slice(..);
    // let timestamp_slice = timestamp_buffer.slice(..);
    // timestamp_slice.map_async(wgpu::MapMode::Read, |r| r.unwrap());
    buffer_slice.map_async(wgpu::MapMode::Read, |r| r.unwrap());
    let buffer_slice2 = readback_buffer2.slice(..);
    // let timestamp_slice = timestamp_buffer.slice(..);
        // timestamp_slice.map_async(wgpu::MapMode::Read, |r| r.unwrap());
    buffer_slice2.map_async(wgpu::MapMode::Read, |r| r.unwrap());
    device.poll(wgpu::Maintain::Wait);

    let data = buffer_slice.get_mapped_range();
    let data2 = buffer_slice2.get_mapped_range();
    // let timing_data = timestamp_slice.get_mapped_range();
    let result = data
        .chunks_exact(4)
        .map(|b| u32::from_ne_bytes(b.try_into().unwrap()))
        .collect::<Vec<_>>();

    let result2 = data2
        .chunks_exact(4)
        .map(|b| u32::from_ne_bytes(b.try_into().unwrap()))
        .collect::<Vec<_>>();
    // let timings = timing_data
    //     .chunks_exact(8)
    //     .map(|b| u64::from_ne_bytes(b.try_into().unwrap()))
    //     .collect::<Vec<_>>();

    drop(data);
    drop(data2);
    readback_buffer.unmap();
    readback_buffer2.unmap();

    let mut final_vec: Vec<u32> = Vec::new();
    // timestamp_buffer.unmap();
    for (a1,a2)in result.iter().zip(result2.iter()) {
        final_vec.push(a1 + a2);
    }
    // println!(
    //     "Took: {:?}",
    //     Duration::from_nanos(
    //         ((timings[1] - timings[0]) as f64 * f64::from(timestamp_period)) as u64
    //     )
    // );
    return final_vec;
}
