//
//  enums.swift
//  bgfx Test
//
//  Created by Stuart Carnie on 4/21/16.
//  Copyright © 2016 SGC. All rights reserved.
//

/// Specifies the supported rendering backend APIs.
public enum RendererBackend: UInt32 {
    /// No backend given.
 	case None = 0
    
    /// Direct3D 9
 	case Direct3D9
    
    /// Direct3D 11
 	case Direct3D11
    
    /// Direct3D 12
 	case Direct3D12
    
    /// Apple Metal.
 	case Metal
    
    /// OpenGL ES
 	case OpenGLES
    
    /// OpenGL
 	case OpenGL
    
    /// Vulkan
 	case Vulkan
    
    /// Used during initialization; specifies that the library should
    /// pick the best renderer for the running hardware and OS.
 	case Default
}

/// Specifies vertex attribute usages
public enum VertexAttributeUsage: UInt32 {
    /// Position data.
	case Position = 0
    
    /// Normals.
	case Normal
    
    /// Tangents.
	case Tangent
    
    /// Bitangents.
	case Bitangent
    
    /// First color channel.
	case Color0
    
    /// Second color channel.
	case Color1
    
    /// Indices.
	case Indices
    
    /// Animation weights.
	case Weight
    
    /// First texture coordinate channel (arbitrary data).
	case TexCoord0
    
    /// Second texture coordinate channel (arbitrary data).
	case TexCoord1
    
    /// Third texture coordinate channel (arbitrary data).
	case TexCoord2
    
    /// Fourth texture coordinate channel (arbitrary data).
	case TexCoord3
    
    /// Fifth texture coordinate channel (arbitrary data).
	case TexCoord4
    
    /// Sixth texture coordinate channel (arbitrary data).
	case TexCoord5
    
    /// Seventh texture coordinate channel (arbitrary data).
	case TexCoord6
    
    /// Eighth texture coordinate channel (arbitrary data).
	case TexCoord7
}

/// Specifies data types for vertex attributes
public enum VertexAttribType: UInt32 {
    
    /// One-byte unsigned integer
    case UInt8 = 0
    
    /// 10-bit unsigned integer
    /// - remark: Availability depends on Caps flags
    case UInt10
    
    /// Two-byte signed integer
    case Int16
    
    /// Two-byte float
    /// - remark: Availability depends on Caps flags
    case Half
    
    /// Four-byte float
    case Float
}


/// Specifies the format of a texture's data.
///
/// - remark:
/// Check Caps flags for hardware format support.
public enum TextureFormat: UInt32 {
    /// Block compression with three color channels, 1 bit alpha.
	case BC1 = 0
    
    /// Block compression with three color channels, 4 bits alpha.
	case BC2
    
    /// Block compression with three color channels, 8 bits alpha.
	case BC3
    
    /// Block compression for 1-channel color.
	case BC4
    
    /// Block compression for 2-channel color.
	case BC5
    
    /// Block compression for three-channel HDR color.
	case BC6H
    
    /// Highest quality block compression.
	case BC7
    
    /// Original ETC block compression.
	case ETC1
    
    /// Improved ETC block compression (no alpha).
	case ETC2
    
    /// Improved ETC block compression with full alpha.
	case ETC2A
    
    /// Improved ETC block compression with 1-bit punchthrough alpha.
	case ETC2A1
    
    /// PVRTC1 compression (2 bits per pixel)
	case PTC12
    
    /// PVRTC1 compression (4 bits per pixel)
	case PTC14
    
    /// PVRTC1 compression with alpha (2 bits per pixel)
	case PTC12A
    
    /// PVRTC1 compression with alpha (4 bits per pixel)
	case PTC14A
    
    /// PVRTC2 compression with alpha (2 bits per pixel)
	case PTC22
    
    /// PVRTC2 compression with alpha (4 bits per pixel)
	case PTC24
    
    /// Unknown texture format.
	case Unknown
    
    /// 1-bit single channel.
	case R1
    
    /// 8-bit single channel (alpha).
	case A8
    
    /// 8-bit single channel.
	case R8
    
    /// 8-bit single channel (integer).
	case R8I
    
    /// 8-bit single channel (unsigned).
	case R8U
    
    /// 8-bit single channel (signed).
	case R8S
    
    /// 16-bit single channel.
	case R16
    
    /// 16-bit single channel (integer).
	case R16I
    
    /// 16-bit single channel (unsigned).
	case R16U
    
    /// 16-bit single channel (float).
	case R16F
    
    /// 16-bit single channel (signed).
	case R16S
    
    /// 32-bit single channel (integer).
	case R32I
    
    /// 32-bit single channel (unsigned).
	case R32U
    
    /// 32-bit single channel (float).
	case R32F
    
    /// 8-bit two channel.
	case RG8
    
    /// 8-bit two channel (integer).
	case RG8I
    
    /// 8-bit two channel (unsigned).
	case RG8U
    
    /// 8-bit two channel (signed).
	case RG8S
    
    /// 16-bit two channel.
	case RG16
    
    /// 16-bit two channel (integer).
	case RG16I
    
    /// 16-bit two channel (unsigned).
	case RG16U
    
    /// 16-bit two channel (float).
	case RG16F
    
    /// 16-bit two channel (signed).
	case RG16S
    
    /// 32-bit two channel (integer).
	case RG32I
    
    /// 32-bit two channel (unsigned).
	case RG32U
    
    /// 32-bit two channel (float).
	case RG32F
    
    /// 8-bit three channel.
	case RGB8
    
    /// 8-bit three channel (integer).
	case RGB8I
    
    /// 8-bit three channel (unsigned).
	case RGB8U
    
    /// 8-bit three channel (signed).
	case RGB8S
    
    /// 9-bit three channel floating point with shared 5-bit exponent.
	case RGB9E5F
    
    /// 8-bit BGRA color.
	case BGRA8
    
    /// 8-bit RGBA color.
	case RGBA8
    
    /// 8-bit RGBA color (integer).
	case RGBA8I
    
    /// 8-bit RGBA color (unsigned).
	case RGBA8U
    
    /// 8-bit RGBA color (signed).
	case RGBA8S
    
    /// 16-bit RGBA color.
	case RGBA16
    
    /// 16-bit RGBA color (integer).
	case RGBA16I
    
    /// 16-bit RGBA color (unsigned).
	case RGBA16U
    
    /// 16-bit RGBA color (float).
	case RGBA16F
    
    /// 16-bit RGBA color (signed).
	case RGBA16S
    
    /// 32-bit RGBA color (integer).
	case RGBA32I
    
    /// 32-bit RGBA color (unsigned).
	case RGBA32U
    
    /// 32-bit RGBA color (float).
	case RGBA32F
    
    /// 5-6-6 color.
	case R5G6B5
    
    /// 4-bit RGBA color.
	case RGBA4
    
    /// 5-bit RGB color with 1-bit alpha.
	case RGB5A1
    
    /// 10-bit RGB color with 2-bit alpha.
	case RGB10A2
    
    /// 11-11-10 color (float).
	case R11G11B10F
    
    /// Unknown depth format.
	case UnknownDepth
    
    /// 16-bit depth.
	case D16
    
    /// 24-bit depth.
	case D24
    
    /// 24-bit depth, 8-bit stencil.
	case D24S8
    
    /// 32-bit depth.
	case D32
    
    /// 16-bit depth (float).
	case D16F
    
    /// 24-bit depth (float).
	case D24F
    
    /// 32-bit depth (float).
	case D32F
    
    /// 8-bit stencil.
	case D0S8
}

/// Specifies the type of uniform data.
public enum UniformType : UInt32 {
    
    /// Single integer.
    case Int1
    
    /// 4D vector.
    case Vector4 = 2
    
    /// 3x3 matrix.
    case Matrix3x3
    
    /// 4x4 matrix.
    case Matrix4x4
}

/// Specifies various settings to change during a reset call
public struct ResetOptions: OptionSetType {
    public let rawValue: UInt32
    
    public init(rawValue: UInt32) { self.rawValue = rawValue }
    
    /// No reset flags
    public static let None = ResetOptions(rawValue: 0x0000_0000)
    
    /// Not supported yet
    public static let FullScreen = ResetOptions(rawValue: 0x0000_0001)
    
    /// Enable 2x MSAA
    public static let MSAAx2 = ResetOptions(rawValue: 0x0000_0010)
    
    /// Enable 4x MSAA
    public static let MSAAx4 = ResetOptions(rawValue: 0x0000_0020)
    
    /// Enable 8x MSAA
    public static let MSAAx8 = ResetOptions(rawValue: 0x0000_0030)
    
    /// Enable 16x MSAA
    public static let MSAAx16 = ResetOptions(rawValue: 0x0000_0040)
    
    /// Enable V-Sync
    public static let VSync = ResetOptions(rawValue: 0x0000_0080)
    
    /// Turn on/off max anisotropy
    public static let MaxAnisotropy = ResetOptions(rawValue: 0x0000_0100)
    
    /// Begin screen capture
    public static let Capture = ResetOptions(rawValue: 0x0000_0200)
    
    /// HMD stereo rendering
    public static let HMD = ResetOptions(rawValue: 0x0000_0400)
    
    /// HMD stereo rendering debug mode
    public static let HMDDebug = ResetOptions(rawValue: 0x0000_0800)
    
    /// HMD calibration
    public static let HMDRecenter = ResetOptions(rawValue: 0x0000_1000)
    
    /// Flush rendering after submitting to GPU
    public static let FlushAfterRender = ResetOptions(rawValue: 0x0000_2000)
    
    /// This flag specifies where flip occurs. Default behavior is that flip occurs
    /// before rendering new frame. This flag only has effect when `BGFX_CONFIG_MULTITHREADED=0`
    public static let FlipAfterRender = ResetOptions(rawValue: 0x0000_4000)
    
    /// Enable sRGB backbuffer
    public static let sRGBBackBuffer = ResetOptions(rawValue: 0x0000_8000)
    
    /// Enable HiDPI rendering
    public static let HiDPI = ResetOptions(rawValue: 0x0001_0000)
    
    /// Enable depth clamp
    public static let DepthClamp = ResetOptions(rawValue: 0x0002_0000)
    
    /// Suspend rendering
    public static let Suspend = ResetOptions(rawValue: 0x0004_0000)
}

/// DebugOptions provides various options for debugging bgfx
public struct DebugOptions: OptionSetType {
    public let rawValue: UInt32
    
    public init(rawValue: UInt32) { self.rawValue = rawValue }
    
    /// Don't enable any debugging features
    public static let None = DebugOptions(rawValue: 0x0000_0000)
    
    /// Enable wireframe for all primitives
    public static let Wireframe = DebugOptions(rawValue: 0x0000_0001)
    
    /// Enable infinitely fast hardware test. No draw calls will be submitted to
    /// driver. It’s useful when profiling to quickly assess bottleneck between CPU and GPU.
    public static let IFH = DebugOptions(rawValue: 0x0000_0002)
    
    /// Display internal statistics
    public static let Stats = DebugOptions(rawValue: 0x0000_0004)
    
    /// Enable debug text display
    public static let Text = DebugOptions(rawValue: 0x0000_0008)
}

public struct ClearTargets: OptionSetType {
    public let rawValue: UInt16
    public init(rawValue: UInt16) { self.rawValue = rawValue }
    
    /// No clear flags
    public static let None = ClearTargets(rawValue: 0x0000)
    
    /// Clear color
    public static let Color = ClearTargets(rawValue: 0x0001)
    
    /// Clear depth
    public static let Depth = ClearTargets(rawValue: 0x0002)
    
    /// Clear stencil
    public static let Stencil = ClearTargets(rawValue: 0x0004)
    
    /// Discard frame buffer attachment 0
    public static let DiscardColor0 = ClearTargets(rawValue: 0x0008)
    
    /// Discard frame buffer attachment 1
    public static let DiscardColor1 = ClearTargets(rawValue: 0x0010)
    
    /// Discard frame buffer attachment 2
    public static let DiscardColor2 = ClearTargets(rawValue: 0x0020)
    
    /// Discard frame buffer attachment 3
    public static let DiscardColor3 = ClearTargets(rawValue: 0x0040)
    
    /// Discard frame buffer attachment 4
    public static let DiscardColor4 = ClearTargets(rawValue: 0x0080)
    
    /// Discard frame buffer attachment 5
    public static let DiscardColor5 = ClearTargets(rawValue: 0x0100)
    
    /// Discard frame buffer attachment 6
    public static let DiscardColor6 = ClearTargets(rawValue: 0x0200)
    
    /// Discard frame buffer attachment 7
    public static let DiscardColor7 = ClearTargets(rawValue: 0x0400)
    
    /// Discard frame buffer depth attachment
    public static let DiscardDepth = ClearTargets(rawValue: 0x0800)
    
    /// Discard frame buffer stencil attachment
    public static let DiscardStencil = ClearTargets(rawValue: 0x1000)
}

/// Specifies various capabilities supported by the rendering device
public struct CapsOptions: OptionSetType {
    public let rawValue: UInt64

    public init(rawValue: UInt64) { self.rawValue = rawValue }

    /// Device supports "Less than or equal to" texture comparison mode
    public static let TextureCompareLessOrEqual = CapsOptions(rawValue: 0x0000_0000_0000_0001)

    /// Device supports all texture comparison modes
    public static let TextureCompareAll = CapsOptions(rawValue: 0x0000_0000_0000_0003)

    /// Device supports 3D textures
    public static let Texture3D = CapsOptions(rawValue: 0x0000_0000_0000_0004)

    /// Device supports 16-bit floats as vertex attributes
    public static let VertexAttributeHalf = CapsOptions(rawValue: 0x0000_0000_0000_0008)

    /// UInt10 vertex attributes are supported
    public static let VertexAttribUInt10 = CapsOptions(rawValue: 0x0000_0000_0000_0010)

    /// Device supports instancing
    public static let Instancing = CapsOptions(rawValue: 0x0000_0000_0000_0020)

    /// Device supports multithreaded rendering
    public static let RendererMultithreaded = CapsOptions(rawValue: 0x0000_0000_0000_0040)

    /// Fragment shaders can access depth values
    public static let FragmentDepth = CapsOptions(rawValue: 0x0000_0000_0000_0080)

    /// Device supports independent blending of simultaneous render targets
    public static let BlendIndependent = CapsOptions(rawValue: 0x0000_0000_0000_0100)

    /// Device supports compute shaders
    public static let Compute = CapsOptions(rawValue: 0x0000_0000_0000_0200)

    /// Device supports ordering of fragment output
    public static let FragmentOrdering = CapsOptions(rawValue: 0x0000_0000_0000_0400)

    /// Indicates whether the device can render to multiple swap chains
    public static let SwapChain = CapsOptions(rawValue: 0x0000_0000_0000_0800)

    /// Head mounted displays are supported
    public static let HeadMountedDisplay = CapsOptions(rawValue: 0x0000_0000_0000_1000)

    /// Device supports 32-bit indices
    public static let Index32 = CapsOptions(rawValue: 0x0000_0000_0000_2000)

    /// Device supports indirect drawing via GPU buffers
    public static let DrawIndirect = CapsOptions(rawValue: 0x0000_0000_0000_4000)

    /// Device supports high-DPI rendering
    public static let HiDPI = CapsOptions(rawValue: 0x0000_0000_0000_8000)

    /// Device supports texture blits
    public static let TextureBlit = CapsOptions(rawValue: 0x0000_0000_0001_0000)

    /// Device supports reading back texture data
    public static let TextureReadBack = CapsOptions(rawValue: 0x0000_0000_0002_0000)

    /// Device supports occlusion queries
    public static let OcclusionQuery = CapsOptions(rawValue: 0x0000_0000_0004_0000)

    /// Device supports alpha to coverage
    public static let AlphaToCoverage = CapsOptions(rawValue: 0x0000_0000_0008_0000)

    /// Device supports conservative rasterization
    public static let ConservativeRaster = CapsOptions(rawValue: 0x0000_0000_0010_0000)
}

/// Indicates the level of support for a specific texture format
public struct TextureFormatSupport: OptionSetType {
    public let rawValue: UInt16

    public init(rawValue: UInt16) { self.rawValue = rawValue }

    /// The format is unsupported
    public static let None = TextureFormatSupport(rawValue: 0x0000)

    /// The format is supported for 2D color data and operations
    public static let Texture2D = TextureFormatSupport(rawValue: 0x0001)

    /// The format is supported for 2D sRGB operations
    public static let Texture2DsRGB = TextureFormatSupport(rawValue: 0x0002)

    /// The format is supported for 2D textures through library emulation
    public static let Texture2DEmulated = TextureFormatSupport(rawValue: 0x0004)

    /// The format is supported for 3D color data and operations
    public static let Texture3D = TextureFormatSupport(rawValue: 0x0008)

    /// The format is supported for 3D sRGB operations
    public static let Texture3DsRGB = TextureFormatSupport(rawValue: 0x0010)

    /// The format is supported for 3D textures through library emulation
    public static let Texture3DEmulated = TextureFormatSupport(rawValue: 0x0020)

    /// The format is supported for cube color data and operations
    public static let Cube = TextureFormatSupport(rawValue: 0x0040)

    /// The format is supported for cube sRGB operations
    public static let CubesRGB = TextureFormatSupport(rawValue: 0x0080)

    /// The format is supported for cube textures through library emulation
    public static let CubeEmulated = TextureFormatSupport(rawValue: 0x0100)

    /// The format is supported for vertex texturing
    public static let Vertex = TextureFormatSupport(rawValue: 0x0200)

    /// The format is supported for compute image operations
    public static let Image = TextureFormatSupport(rawValue: 0x0400)

    /// The format is supported for framebuffers
    public static let FrameBuffer = TextureFormatSupport(rawValue: 0x0800)

    /// The format is supported for MSAA framebuffers
    public static let FrameBufferMSAA = TextureFormatSupport(rawValue: 0x1000)

    /// The format is supported for MSAA sampling
    public static let MSAA = TextureFormatSupport(rawValue: 0x2000)
}

/// Specifies various texture flags.
public struct TextureFlags : OptionSetType {
    public let rawValue: UInt32
    public init(rawValue: UInt32) { self.rawValue = rawValue }
    
    /// No flags set.
    public static let None = TextureFlags(rawValue: 0x00000000)
    
    /// Mirror the texture in the U coordinate.
    public static let MirrorU = TextureFlags(rawValue: 0x00000001)
    
    /// Clamp the texture in the U coordinate.
    public static let ClampU = TextureFlags(rawValue: 0x00000002)
    
    /// Use a border color for addresses outside the range in the U coordinate.
    public static let BorderU = TextureFlags(rawValue: 0x00000003)
    
    /// Mirror the texture in the V coordinate.
    public static let MirrorV = TextureFlags(rawValue: 0x00000004)
    
    /// Clamp the texture in the V coordinate.
    public static let ClampV = TextureFlags(rawValue: 0x00000008)
    
    /// Use a border color for addresses outside the range in the V coordinate.
    public static let BorderV = TextureFlags(rawValue: 0x0000000c)
    
    /// Mirror the texture in the W coordinate.
    public static let MirrorW = TextureFlags(rawValue: 0x00000010)
    
    /// Clamp the texture in the W coordinate.
    public static let ClampW = TextureFlags(rawValue: 0x00000020)
    
    /// Use a border color for addresses outside the range in the W coordinate.
    public static let BorderW = TextureFlags(rawValue: 0x00000030)
    
    /// Use point filtering for texture minification.
    public static let MinFilterPoint = TextureFlags(rawValue: 0x00000040)
    
    /// Use anisotropic filtering for texture minification.
    public static let MinFilterAnisotropic = TextureFlags(rawValue: 0x00000080)
    
    /// Use point filtering for texture magnification.
    public static let MagFilterPoint = TextureFlags(rawValue: 0x00000100)
    
    /// Use anisotropic filtering for texture magnification.
    public static let MagFilterAnisotropic = TextureFlags(rawValue: 0x00000200)
    
    /// Use point filtering for texture mipmaps.
    public static let MipFilterPoint = TextureFlags(rawValue: 0x00000400)
    
    /// The texture will be used as a render target.
    public static let RenderTarget = TextureFlags(rawValue: 0x00001000)
    
    /// The render target texture support 2x multisampling.
    public static let RenderTargetMultisample2x = TextureFlags(rawValue: 0x00002000)
    
    /// The render target texture support 4x multisampling.
    public static let RenderTargetMultisample4x = TextureFlags(rawValue: 0x00003000)
    
    /// The render target texture support 8x multisampling.
    public static let RenderTargetMultisample8x = TextureFlags(rawValue: 0x00004000)
    
    /// The render target texture support 16x multisampling.
    public static let RenderTargetMultisample16x = TextureFlags(rawValue: 0x00005000)
    
    /// The texture is only writeable (render target).
    public static let RenderTargetWriteOnly = TextureFlags(rawValue: 0x00008000)
    
    /// Use a "less than" operator when comparing textures.
    public static let CompareLess = TextureFlags(rawValue: 0x00010000)
    
    /// Use a "less than or equal" operator when comparing textures.
    public static let CompareLessEqual = TextureFlags(rawValue: 0x00020000)
    
    /// Use an equality operator when comparing textures.
    public static let CompareEqual = TextureFlags(rawValue: 0x00030000)
    
    /// Use a "greater than or equal" operator when comparing textures.
    public static let CompareGreaterEqual = TextureFlags(rawValue: 0x00040000)
    
    /// Use a "greater than" operator when comparing textures.
    public static let CompareGreater = TextureFlags(rawValue: 0x00050000)
    
    /// Use an inequality operator when comparing textures.
    public static let CompareNotEqual = TextureFlags(rawValue: 0x00060000)
    
    /// Never compare two textures as equal.
    public static let CompareNever = TextureFlags(rawValue: 0x00070000)
    
    /// Always compare two textures as equal.
    public static let CompareAlways = TextureFlags(rawValue: 0x00080000)
    
    /// Texture is the target of compute shader writes.
    public static let ComputeWrite = TextureFlags(rawValue: 0x00100000)
    
    /// Texture data is in non-linear sRGB format.
    public static let Srgb = TextureFlags(rawValue: 0x00200000)
    
    /// Texture can be used as the destination of a blit operation.
    public static let BlitDestination = TextureFlags(rawValue: 0x00400000)
    
    /// Texture data can be read back.
    public static let ReadBack = TextureFlags(rawValue: 0x00800000)

    /// Default flags
    public static let Default = TextureFlags(rawValue: UInt32.max)
}

/// Describes access rights for a compute buffer.
public enum ComputeBufferAccess: UInt32 {
    /// The buffer can only be read.
    case Read
    
    /// The buffer can only be written to.
    case Write
    
    /// The buffer can be read and written.
    case ReadWrite
}

/// Addresses a particular face of a cube map.
public enum CubeMapFace : UInt8 {
    /// The right face.
    case Right
    
    /// The left face.
    case Left
    
    /// The top face.
    case Top
    
    /// The bottom face.
    case Bottom
    
    /// The front face.
    case Front
    
    /// The back face.
    case Back
}

/// Specifies known vendor IDs
public enum VendorID: UInt16 {
    /// Autoselect adapter
    case None = 0x0000
    
    /// Special flag to use platform's software rasterizer, if available
    case SoftwareRasterizer = 0x0001
    
    /// AMD adapter
    case AMD = 0x1002
    
    /// Intel adapter
    case Intel = 0x8086
    
    /// nVIDIA adapter
    case NVIDIA = 0x10de
}


/// Specifies scaling relative to the size of the backbuffer
public enum BackbufferRatio: UInt32 {
    
    /// Surface is equal to the backbuffer size
    case Equal = 0
    
    /// Surface is half the backbuffer size
    case Half
    
    /// Surface is a quater of the backbuffer size
    case Quarter
    
    /// Surface is an eighth of the backbuffer size
    case Eigth
    
    /// Surface is a sixteenth of the backbuffer size
    case Sixteenth
    
    /// Surface is double the backbuffer size
    case Double
}

/// Specifies various flags that control vertex and index buffer behavior.
public struct BufferFlags : OptionSetType {
    public let rawValue: UInt16
    public init(rawValue: UInt16) { self.rawValue = rawValue }
    
    /// No flags specified.
    public static let None = BufferFlags(rawValue: 0x00)
    
    /// Specifies the format of data in a compute buffer as being 8x1.
    public static let ComputeFormat8x1 = BufferFlags(rawValue: 0x1)
    
    /// Specifies the format of data in a compute buffer as being 8x2.
    public static let ComputeFormat8x2 = BufferFlags(rawValue: 0x2)
    
    /// Specifies the format of data in a compute buffer as being 8x4.
    public static let ComputeFormat8x4 = BufferFlags(rawValue: 0x3)
    
    /// Specifies the format of data in a compute buffer as being 16x1.
    public static let ComputeFormat16x1 = BufferFlags(rawValue: 0x4)
    
    /// Specifies the format of data in a compute buffer as being 16x2.
    public static let ComputeFormat16x2 = BufferFlags(rawValue: 0x5)
    
    /// Specifies the format of data in a compute buffer as being 16x4.
    public static let ComputeFormat16x4 = BufferFlags(rawValue: 0x6)
    
    /// Specifies the format of data in a compute buffer as being 32x1.
    public static let ComputeFormat32x1 = BufferFlags(rawValue: 0x7)
    
    /// Specifies the format of data in a compute buffer as being 32x2.
    public static let ComputeFormat32x2 = BufferFlags(rawValue: 0x8)
    
    /// Specifies the format of data in a compute buffer as being 32x4.
    public static let ComputeFormat32x4 = BufferFlags(rawValue: 0x9)
    
    /// Specifies the type of data in a compute buffer as being unsigned integers.
    public static let ComputeTypeUInt = BufferFlags(rawValue: 0x10)
    
    /// Specifies the type of data in a compute buffer as being signed integers.
    public static let ComputeTypeInt = BufferFlags(rawValue: 0x20)
    
    /// Specifies the type of data in a compute buffer as being floating point values.
    public static let ComputeTypeFloat = BufferFlags(rawValue: 0x30)
    
    /// Buffer will be read by a compute shader.
    public static let ComputeRead = BufferFlags(rawValue: 0x100)
    
    /// Buffer will be written into by a compute shader. It cannot be accessed by the CPU.
    public static let ComputeWrite = BufferFlags(rawValue: 0x200)
    
    /// Buffer is the source of indirect draw commands.
    public static let DrawIndirect = BufferFlags(rawValue: 0x400)
    
    /// Buffer will resize on update if a different quantity of data is passed. If this flag is not set
    /// the data will be trimmed to fit in the existing buffer size. Effective only for dynamic buffers.
    public static let AllowResize = BufferFlags(rawValue: 0x800)
    
    /// Buffer is using 32-bit indices. Useful only for index buffers.
    public static let Index32 = BufferFlags(rawValue: 0x1000)
    
    /// Buffer will be read and written by a compute shader.
    public static let ComputeReadWrite = [BufferFlags.ComputeRead, BufferFlags.ComputeWrite]
}

/// Specifies various error types that can be reported by bgfx.
public enum BgfxError: UInt32 {
    /// A debug check failed; the program can safely continue, but the issue should be investigated.
    case DebugCheck
    
    /// The user's hardware failed checks for the minimum required specs.
    case MinimumRequiredSpecs
    
    /// The program tried to compile an invalid shader.
    case InvalidShader
    
    /// An error occurred during bgfx library initialization.
    case UnableToInitialize
    
    /// Failed while trying to create a texture.
    case UnableToCreateTexture
    
    /// The graphics device was lost and the library was unable to recover.
    case DeviceLost
}

/// Specifies debug text colors.
public enum DebugColor: UInt8 {
    /// Transparent.
    case Transparent = 0
    
    /// Red.
    case Red
    
    /// Green.
    case Green
    
    /// Yellow.
    case Yellow
    
    /// Blue.
    case Blue
    
    /// Purple.
    case Purple
    
    /// Cyan.
    case Cyan
    
    /// Gray.
    case Gray
    
    /// Dark gray.
    case DarkGray
    
    /// Light red.
    case LightRed
    
    /// Light green.
    case LightGreen
    
    /// Light yellow.
    case LightYellow
    
    /// Light blue.
    case LightBlue
    
    /// Light purple.
    case LightPurple
    
    /// Light cyan.
    case LightCyan
    
    /// White.
    case White
}

/// Specifies results of an occlusion query.
public enum OcclusionQueryResult: UInt32 {
    /// Objects are invisible.
    case Invisible
    
    /// Objects are visible.
    case Visible
    
    /// Result is not ready or is unknown.
    case NoResult
}

/// Specifies results of manually rendering a single frame
public enum RenderFrameResult: UInt32 {
    /// No device context has been created yet
    case NoContext = 0
    
    /// The frame was rendered
    case Render
    
    /// Rendering is done; the program should exit
    case Exiting
}
