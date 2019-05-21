.class final Lcom/android/camera/camcorder/CamcorderEncoderProfileFactoryImpl;
.super Ljava/lang/Object;
.source "CamcorderEncoderProfileFactoryImpl.java"

# interfaces
.implements Lcom/android/camera/camcorder/CamcorderEncoderProfileFactory;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x8
.end annotation


# instance fields
.field private final apiHelper:Lcom/android/camera/util/ApiHelper;

.field private final mediaCodecManager:Lcom/android/camera/camcorder/media/MediaCodecManager;

.field private final validAudioSampleRates:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string v0, "CdrEncProfFty"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/util/ApiHelper;Lcom/android/camera/camcorder/media/MediaCodecManager;)V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/camera/camcorder/CamcorderEncoderProfileFactoryImpl;->validAudioSampleRates:[I

    .line 54
    iput-object p1, p0, Lcom/android/camera/camcorder/CamcorderEncoderProfileFactoryImpl;->apiHelper:Lcom/android/camera/util/ApiHelper;

    .line 55
    iput-object p2, p0, Lcom/android/camera/camcorder/CamcorderEncoderProfileFactoryImpl;->mediaCodecManager:Lcom/android/camera/camcorder/media/MediaCodecManager;

    .line 56
    return-void

    .line 36
    nop

    :array_0
    .array-data 4
        0x1f40
        0x2b11
        0x2ee0
        0x3e80
        0x5622
        0x5dc0
        0xac44
        0xbb80
    .end array-data
.end method

.method private final createCamcorderVideoProfile(Lcom/google/android/apps/camera/proxy/media/CamcorderProfileProxy;Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;III)Lcom/android/camera/camcorder/CamcorderVideoEncoderProfile;
    .locals 9

    .prologue
    .line 154
    .line 155
    invoke-static {p1}, Lcom/android/camera/camcorder/CamcorderVideoFileFormat;->of(Lcom/google/android/apps/camera/proxy/media/CamcorderProfileProxy;)Lcom/android/camera/camcorder/CamcorderVideoFileFormat;

    move-result-object v1

    .line 156
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderEncoderProfileFactoryImpl;->apiHelper:Lcom/android/camera/util/ApiHelper;

    invoke-virtual {v0}, Lcom/android/camera/util/ApiHelper;->isNexusMarlin()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderEncoderProfileFactoryImpl;->apiHelper:Lcom/android/camera/util/ApiHelper;

    invoke-virtual {v0}, Lcom/android/camera/util/ApiHelper;->isNexusSailfish()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    :cond_0
    new-instance v0, Lcom/android/camera/camcorder/CamcorderVideoEncoderProfile;

    .line 162
    invoke-interface {p1}, Lcom/google/android/apps/camera/proxy/media/CamcorderProfileProxy;->videoCodec()I

    move-result v5

    const/16 v6, 0x8

    const v7, 0x8000

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/android/camera/camcorder/CamcorderVideoEncoderProfile;-><init>(Lcom/android/camera/camcorder/CamcorderVideoFileFormat;Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;IIIIII)V

    .line 167
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/android/camera/camcorder/CamcorderVideoEncoderProfile;

    .line 172
    invoke-interface {p1}, Lcom/google/android/apps/camera/proxy/media/CamcorderProfileProxy;->videoCodec()I

    move-result v5

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/camcorder/CamcorderVideoEncoderProfile;-><init>(Lcom/android/camera/camcorder/CamcorderVideoFileFormat;Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;IIII)V

    goto :goto_0
.end method

.method private static isCaptureFrameRateValid(Lcom/google/android/apps/camera/proxy/media/CamcorderProfileProxy;Lcom/android/camera/camcorder/CamcorderCaptureRate;)Z
    .locals 2

    .prologue
    .line 238
    invoke-interface {p0}, Lcom/google/android/apps/camera/proxy/media/CamcorderProfileProxy;->videoFrameRate()I

    move-result v0

    .line 239
    invoke-virtual {p1}, Lcom/android/camera/camcorder/CamcorderCaptureRate;->getCaptureFrameRate()I

    move-result v1

    if-gt v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isResolutionValid(Lcom/google/android/apps/camera/proxy/media/CamcorderProfileProxy;Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;)Z
    .locals 3

    .prologue
    .line 246
    new-instance v0, Landroid/util/Size;

    .line 247
    invoke-interface {p0}, Lcom/google/android/apps/camera/proxy/media/CamcorderProfileProxy;->videoFrameWidth()I

    move-result v1

    invoke-interface {p0}, Lcom/google/android/apps/camera/proxy/media/CamcorderProfileProxy;->videoFrameHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    .line 248
    invoke-virtual {p1}, Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;->getSize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final createCamcorderAudioProfile$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15THM2RB3DTP68PBI5T1M2RB3DTP68PBI8DGN0T3LE9IL4OBKCKTKOORFDKNMERRFCTM6ABR1DPI74RR9CGNM2S3GECNM6OBDCLP62BRGE9NNGU9FDLIM8QB15T1M2RB3DTP68PBIA1P6UPJ9DHIL0SJFF1SJMAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BR3C5MM6RRICHIN4BQ3C5MM6RRICHIN4GBLCHKMUHBECDNM8PBIA1P6UPJ9DHIJM___$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUS3IDTS7IBRDCLI6IO9F8DGMQORFE9I6ASIGE9NMCQBCCL874RROF4TIIJ33DTMIUOBECHP6UQB45THM2RB5E9GIUOR1DLHMUSJ4CLP2UGR1DLHMUSJ4CLP42TB4D5NKARJ3DTI6ASIGE9NMCQBCCKTG____(Lcom/google/android/apps/camera/proxy/media/CamcorderProfileProxy;)Lcom/android/camera/one/v2/cameracapturesession/CameraCaptureSessionModule;
    .locals 5

    .prologue
    .line 180
    invoke-interface {p1}, Lcom/google/android/apps/camera/proxy/media/CamcorderProfileProxy;->audioSampleRate()I

    move-result v0

    .line 181
    new-instance v1, Lcom/android/camera/one/v2/cameracapturesession/CameraCaptureSessionModule;

    .line 182
    invoke-interface {p1}, Lcom/google/android/apps/camera/proxy/media/CamcorderProfileProxy;->audioCodec()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/apps/camera/proxy/media/AudioEncoder;->of(I)Lcom/google/android/apps/camera/proxy/media/AudioEncoder;

    move-result-object v2

    .line 183
    invoke-interface {p1}, Lcom/google/android/apps/camera/proxy/media/CamcorderProfileProxy;->audioBitRate()I

    move-result v3

    .line 185
    invoke-interface {p1}, Lcom/google/android/apps/camera/proxy/media/CamcorderProfileProxy;->audioChannels()I

    move-result v4

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/android/camera/one/v2/cameracapturesession/CameraCaptureSessionModule;-><init>(Lcom/google/android/apps/camera/proxy/media/AudioEncoder;III)V

    .line 181
    return-object v1
.end method

.method public final createCamcorderHfrAudioProfile$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15THM2RB3DTP68PBI5T1M2RB3DTP68PBI8DGN0T3LE9IL4OBKCKTKOORFDKNMERRFCTM6ABR1DPI74RR9CGNM2S3GECNM6OBDCLP62BRGE9NNGU9FDLIM8QB15T1M2RB3DTP68PBIA1P6UPJ9DHIL0SJFF1SJMAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BR3C5MM6RRICHIN4BQ3C5MM6RRICHIN4GBLCHKMUHBECDNM8PBIA1P6UPJ9DHIJM___(Lcom/android/camera/camcorder/CamcorderCaptureRate;Lcom/google/android/apps/camera/proxy/media/CamcorderProfileProxy;)Lcom/android/camera/one/v2/cameracapturesession/CameraCaptureSessionModule;
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 198
    .line 199
    invoke-interface {p2}, Lcom/google/android/apps/camera/proxy/media/CamcorderProfileProxy;->audioSampleRate()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/camera/camcorder/CamcorderCaptureRate;->getSlowMotionFactor()I

    move-result v1

    div-int v4, v0, v1

    .line 201
    invoke-interface {p2}, Lcom/google/android/apps/camera/proxy/media/CamcorderProfileProxy;->audioCodec()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/apps/camera/proxy/media/AudioEncoder;->of(I)Lcom/google/android/apps/camera/proxy/media/AudioEncoder;

    move-result-object v5

    .line 202
    invoke-virtual {v5}, Lcom/google/android/apps/camera/proxy/media/AudioEncoder;->getMimeType()Lcom/google/android/apps/camera/proxy/media/AudioMimeType;

    move-result-object v0

    .line 203
    iget-object v1, p0, Lcom/android/camera/camcorder/CamcorderEncoderProfileFactoryImpl;->mediaCodecManager:Lcom/android/camera/camcorder/media/MediaCodecManager;

    invoke-interface {v1, v0}, Lcom/android/camera/camcorder/media/MediaCodecManager;->getAudioCodecInfo(Lcom/google/android/apps/camera/proxy/media/AudioMimeType;)Landroid/media/MediaCodecInfo;

    move-result-object v1

    .line 204
    invoke-static {v1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->verifyNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    invoke-virtual {v0}, Lcom/google/android/apps/camera/proxy/media/AudioMimeType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v0

    .line 207
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->verifyNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getAudioCapabilities()Landroid/media/MediaCodecInfo$AudioCapabilities;

    move-result-object v6

    .line 209
    invoke-static {v6}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->verifyNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    iget-object v7, p0, Lcom/android/camera/camcorder/CamcorderEncoderProfileFactoryImpl;->validAudioSampleRates:[I

    array-length v8, v7

    move v3, v2

    move v1, v2

    :goto_0
    if-ge v3, v8, :cond_1

    aget v0, v7, v3

    .line 214
    invoke-virtual {v6, v0}, Landroid/media/MediaCodecInfo$AudioCapabilities;->isSampleRateSupported(I)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 220
    if-ge v0, v4, :cond_0

    .line 213
    :goto_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v0

    .line 224
    :cond_1
    if-lez v1, :cond_2

    const/4 v0, 0x1

    :goto_2
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->verify(Z)V

    .line 226
    new-instance v0, Lcom/android/camera/one/v2/cameracapturesession/CameraCaptureSessionModule;

    .line 228
    invoke-interface {p2}, Lcom/google/android/apps/camera/proxy/media/CamcorderProfileProxy;->audioBitRate()I

    move-result v2

    .line 230
    invoke-interface {p2}, Lcom/google/android/apps/camera/proxy/media/CamcorderProfileProxy;->audioChannels()I

    move-result v3

    invoke-direct {v0, v5, v2, v1, v3}, Lcom/android/camera/one/v2/cameracapturesession/CameraCaptureSessionModule;-><init>(Lcom/google/android/apps/camera/proxy/media/AudioEncoder;III)V

    .line 226
    return-object v0

    :cond_2
    move v0, v2

    .line 224
    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public final createCamcorderHfrVideoProfile(Lcom/google/android/apps/camera/proxy/media/CamcorderProfileProxy;Lcom/android/camera/camcorder/CamcorderCaptureRate;Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;)Lcom/android/camera/camcorder/CamcorderVideoEncoderProfile;
    .locals 6

    .prologue
    .line 120
    .line 121
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/camcorder/CamcorderEncoderProfileFactoryImpl;->hasCamcorderHfrVideoProfile(Lcom/google/android/apps/camera/proxy/media/CamcorderProfileProxy;Lcom/android/camera/camcorder/CamcorderCaptureRate;Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;)Z

    move-result v0

    .line 120
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(Z)V

    .line 127
    invoke-interface {p1}, Lcom/google/android/apps/camera/proxy/media/CamcorderProfileProxy;->videoFrameRate()I

    move-result v0

    .line 130
    invoke-virtual {p2}, Lcom/android/camera/camcorder/CamcorderCaptureRate;->getCaptureFrameRate()I

    move-result v4

    .line 132
    invoke-virtual {p2}, Lcom/android/camera/camcorder/CamcorderCaptureRate;->getEncodingFrameRate()I

    move-result v5

    .line 134
    invoke-interface {p1}, Lcom/google/android/apps/camera/proxy/media/CamcorderProfileProxy;->videoBitRate()I

    move-result v3

    .line 135
    if-ge v4, v0, :cond_0

    .line 136
    int-to-float v1, v4

    int-to-float v0, v0

    div-float v0, v1, v0

    .line 137
    int-to-float v1, v3

    mul-float/2addr v0, v1

    float-to-int v3, v0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    .line 140
    invoke-direct/range {v0 .. v5}, Lcom/android/camera/camcorder/CamcorderEncoderProfileFactoryImpl;->createCamcorderVideoProfile(Lcom/google/android/apps/camera/proxy/media/CamcorderProfileProxy;Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;III)Lcom/android/camera/camcorder/CamcorderVideoEncoderProfile;

    move-result-object v0

    return-object v0
.end method

.method public final createCamcorderVideoProfile(Lcom/google/android/apps/camera/proxy/media/CamcorderProfileProxy;Lcom/android/camera/camcorder/CamcorderCaptureRate;Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;)Lcom/android/camera/camcorder/CamcorderVideoEncoderProfile;
    .locals 6

    .prologue
    .line 88
    .line 89
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/camcorder/CamcorderEncoderProfileFactoryImpl;->hasCamcorderVideoProfile(Lcom/google/android/apps/camera/proxy/media/CamcorderProfileProxy;Lcom/android/camera/camcorder/CamcorderCaptureRate;Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;)Z

    move-result v0

    .line 88
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(Z)V

    .line 95
    invoke-interface {p1}, Lcom/google/android/apps/camera/proxy/media/CamcorderProfileProxy;->videoFrameRate()I

    move-result v0

    .line 98
    invoke-virtual {p2}, Lcom/android/camera/camcorder/CamcorderCaptureRate;->getCaptureFrameRate()I

    move-result v4

    .line 102
    invoke-interface {p1}, Lcom/google/android/apps/camera/proxy/media/CamcorderProfileProxy;->videoBitRate()I

    move-result v3

    .line 103
    const/16 v1, 0x1e

    if-ne v4, v1, :cond_0

    const/16 v1, 0x3c

    if-ne v0, v1, :cond_0

    .line 104
    int-to-double v0, v3

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    div-double/2addr v0, v2

    double-to-int v3, v0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move v5, v4

    .line 107
    invoke-direct/range {v0 .. v5}, Lcom/android/camera/camcorder/CamcorderEncoderProfileFactoryImpl;->createCamcorderVideoProfile(Lcom/google/android/apps/camera/proxy/media/CamcorderProfileProxy;Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;III)Lcom/android/camera/camcorder/CamcorderVideoEncoderProfile;

    move-result-object v0

    return-object v0
.end method

.method public final hasCamcorderHfrVideoProfile(Lcom/google/android/apps/camera/proxy/media/CamcorderProfileProxy;Lcom/android/camera/camcorder/CamcorderCaptureRate;Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;)Z
    .locals 1

    .prologue
    .line 75
    invoke-static {p1, p2}, Lcom/android/camera/camcorder/CamcorderEncoderProfileFactoryImpl;->isCaptureFrameRateValid(Lcom/google/android/apps/camera/proxy/media/CamcorderProfileProxy;Lcom/android/camera/camcorder/CamcorderCaptureRate;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    invoke-static {p1, p3}, Lcom/android/camera/camcorder/CamcorderEncoderProfileFactoryImpl;->isResolutionValid(Lcom/google/android/apps/camera/proxy/media/CamcorderProfileProxy;Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    invoke-static {p1}, Lcom/android/camera/camcorder/CamcorderVideoFileFormat;->isFileFormatValid(Lcom/google/android/apps/camera/proxy/media/CamcorderProfileProxy;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 78
    :cond_0
    const/4 v0, 0x0

    .line 80
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final hasCamcorderVideoProfile(Lcom/google/android/apps/camera/proxy/media/CamcorderProfileProxy;Lcom/android/camera/camcorder/CamcorderCaptureRate;Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;)Z
    .locals 1

    .prologue
    .line 63
    invoke-static {p1, p2}, Lcom/android/camera/camcorder/CamcorderEncoderProfileFactoryImpl;->isCaptureFrameRateValid(Lcom/google/android/apps/camera/proxy/media/CamcorderProfileProxy;Lcom/android/camera/camcorder/CamcorderCaptureRate;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    invoke-static {p1, p3}, Lcom/android/camera/camcorder/CamcorderEncoderProfileFactoryImpl;->isResolutionValid(Lcom/google/android/apps/camera/proxy/media/CamcorderProfileProxy;Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-static {p1}, Lcom/android/camera/camcorder/CamcorderVideoFileFormat;->isFileFormatValid(Lcom/google/android/apps/camera/proxy/media/CamcorderProfileProxy;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 66
    :cond_0
    const/4 v0, 0x0

    .line 68
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
