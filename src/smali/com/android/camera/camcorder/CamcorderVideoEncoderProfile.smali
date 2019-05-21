.class public final Lcom/android/camera/camcorder/CamcorderVideoEncoderProfile;
.super Ljava/lang/Object;
.source "CamcorderVideoEncoderProfile.java"


# static fields
.field public static USE_DEFAULT:I


# instance fields
.field private final camcorderVideoFileFormat:Lcom/android/camera/camcorder/CamcorderVideoFileFormat;

.field private final camcorderVideoResolution:Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;

.field private final videoCaptureBitRate:I

.field private final videoCaptureFrameRate:I

.field private final videoEncoder:I

.field private final videoEncoderLevel:I

.field private final videoEncoderProfile:I

.field private final videoEncodingFrameRate:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, -0x1

    sput v0, Lcom/android/camera/camcorder/CamcorderVideoEncoderProfile;->USE_DEFAULT:I

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/camcorder/CamcorderVideoFileFormat;Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;IIII)V
    .locals 9

    .prologue
    .line 61
    sget v6, Lcom/android/camera/camcorder/CamcorderVideoEncoderProfile;->USE_DEFAULT:I

    sget v7, Lcom/android/camera/camcorder/CamcorderVideoEncoderProfile;->USE_DEFAULT:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/camera/camcorder/CamcorderVideoEncoderProfile;-><init>(Lcom/android/camera/camcorder/CamcorderVideoFileFormat;Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;IIIIII)V

    .line 63
    return-void
.end method

.method public constructor <init>(Lcom/android/camera/camcorder/CamcorderVideoFileFormat;Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;IIIIII)V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/camera/camcorder/CamcorderVideoEncoderProfile;->camcorderVideoFileFormat:Lcom/android/camera/camcorder/CamcorderVideoFileFormat;

    .line 42
    iput-object p2, p0, Lcom/android/camera/camcorder/CamcorderVideoEncoderProfile;->camcorderVideoResolution:Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;

    .line 43
    iput p3, p0, Lcom/android/camera/camcorder/CamcorderVideoEncoderProfile;->videoCaptureBitRate:I

    .line 44
    iput p4, p0, Lcom/android/camera/camcorder/CamcorderVideoEncoderProfile;->videoCaptureFrameRate:I

    .line 45
    iput p5, p0, Lcom/android/camera/camcorder/CamcorderVideoEncoderProfile;->videoEncoder:I

    .line 46
    iput p6, p0, Lcom/android/camera/camcorder/CamcorderVideoEncoderProfile;->videoEncoderProfile:I

    .line 47
    iput p7, p0, Lcom/android/camera/camcorder/CamcorderVideoEncoderProfile;->videoEncoderLevel:I

    .line 48
    iput p8, p0, Lcom/android/camera/camcorder/CamcorderVideoEncoderProfile;->videoEncodingFrameRate:I

    .line 51
    iget v0, p0, Lcom/android/camera/camcorder/CamcorderVideoEncoderProfile;->videoCaptureFrameRate:I

    iget v1, p0, Lcom/android/camera/camcorder/CamcorderVideoEncoderProfile;->videoEncodingFrameRate:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(Z)V

    .line 52
    return-void

    .line 51
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final getSlowMotionFactor()I
    .locals 2

    .prologue
    .line 164
    iget v0, p0, Lcom/android/camera/camcorder/CamcorderVideoEncoderProfile;->videoCaptureFrameRate:I

    iget v1, p0, Lcom/android/camera/camcorder/CamcorderVideoEncoderProfile;->videoEncodingFrameRate:I

    div-int/2addr v0, v1

    return v0
.end method

.method public final getVideoCaptureFrameRate()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/android/camera/camcorder/CamcorderVideoEncoderProfile;->videoCaptureFrameRate:I

    return v0
.end method

.method public final getVideoEncoder()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/android/camera/camcorder/CamcorderVideoEncoderProfile;->videoEncoder:I

    return v0
.end method

.method public final getVideoEncoderLevel()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/android/camera/camcorder/CamcorderVideoEncoderProfile;->videoEncoderLevel:I

    return v0
.end method

.method public final getVideoEncoderProfile()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/android/camera/camcorder/CamcorderVideoEncoderProfile;->videoEncoderProfile:I

    return v0
.end method

.method public final getVideoEncodingBitRate()I
    .locals 2

    .prologue
    .line 132
    iget v0, p0, Lcom/android/camera/camcorder/CamcorderVideoEncoderProfile;->videoCaptureFrameRate:I

    iget v1, p0, Lcom/android/camera/camcorder/CamcorderVideoEncoderProfile;->videoEncodingFrameRate:I

    if-ne v0, v1, :cond_0

    .line 133
    iget v0, p0, Lcom/android/camera/camcorder/CamcorderVideoEncoderProfile;->videoCaptureBitRate:I

    .line 136
    :goto_0
    return v0

    .line 135
    :cond_0
    iget v0, p0, Lcom/android/camera/camcorder/CamcorderVideoEncoderProfile;->videoCaptureFrameRate:I

    iget v1, p0, Lcom/android/camera/camcorder/CamcorderVideoEncoderProfile;->videoEncodingFrameRate:I

    div-int/2addr v0, v1

    .line 136
    iget v1, p0, Lcom/android/camera/camcorder/CamcorderVideoEncoderProfile;->videoCaptureBitRate:I

    div-int v0, v1, v0

    goto :goto_0
.end method

.method public final getVideoEncodingFrameRate()I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lcom/android/camera/camcorder/CamcorderVideoEncoderProfile;->videoEncodingFrameRate:I

    return v0
.end method

.method public final getVideoFileFormat()Lcom/android/camera/camcorder/CamcorderVideoFileFormat;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderVideoEncoderProfile;->camcorderVideoFileFormat:Lcom/android/camera/camcorder/CamcorderVideoFileFormat;

    return-object v0
.end method

.method public final getVideoResolution()Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderVideoEncoderProfile;->camcorderVideoResolution:Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;

    return-object v0
.end method

.method public final isSlowMotion()Z
    .locals 2

    .prologue
    .line 155
    iget v0, p0, Lcom/android/camera/camcorder/CamcorderVideoEncoderProfile;->videoCaptureFrameRate:I

    iget v1, p0, Lcom/android/camera/camcorder/CamcorderVideoEncoderProfile;->videoEncodingFrameRate:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 169
    invoke-static {p0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "camcorderVideoFileFormat"

    iget-object v2, p0, Lcom/android/camera/camcorder/CamcorderVideoEncoderProfile;->camcorderVideoFileFormat:Lcom/android/camera/camcorder/CamcorderVideoFileFormat;

    .line 170
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "camcorderVideoResolution"

    iget-object v2, p0, Lcom/android/camera/camcorder/CamcorderVideoEncoderProfile;->camcorderVideoResolution:Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;

    .line 171
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "videoCaptureBitRate"

    iget v2, p0, Lcom/android/camera/camcorder/CamcorderVideoEncoderProfile;->videoCaptureBitRate:I

    .line 172
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "videoCaptureFrameRate"

    iget v2, p0, Lcom/android/camera/camcorder/CamcorderVideoEncoderProfile;->videoCaptureFrameRate:I

    .line 173
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "videoEncoder"

    iget v2, p0, Lcom/android/camera/camcorder/CamcorderVideoEncoderProfile;->videoEncoder:I

    .line 174
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "videoEncodingFrameRate"

    iget v2, p0, Lcom/android/camera/camcorder/CamcorderVideoEncoderProfile;->videoEncodingFrameRate:I

    .line 175
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 176
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 169
    return-object v0
.end method
