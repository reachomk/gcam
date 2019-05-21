.class public final Lcom/google/android/apps/camera/proxy/media/SimpleCamcorderProfileProxy;
.super Ljava/lang/Object;
.source "SimpleCamcorderProfileProxy.java"

# interfaces
.implements Lcom/google/android/apps/camera/proxy/media/CamcorderProfileProxy;


# instance fields
.field private final audioBitRate:I

.field private final audioChannels:I

.field private final audioCodec:I

.field private final audioSampleRate:I

.field private final fileFormat:I

.field private final quality:I

.field private final videoBitRate:I

.field private final videoCodec:I

.field private final videoFrameHeight:I

.field private final videoFrameRate:I

.field private final videoFrameWidth:I


# direct methods
.method public constructor <init>(IIIIIIIIIII)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lcom/google/android/apps/camera/proxy/media/SimpleCamcorderProfileProxy;->audioBitRate:I

    .line 35
    iput p2, p0, Lcom/google/android/apps/camera/proxy/media/SimpleCamcorderProfileProxy;->audioChannels:I

    .line 36
    iput p3, p0, Lcom/google/android/apps/camera/proxy/media/SimpleCamcorderProfileProxy;->audioCodec:I

    .line 37
    iput p4, p0, Lcom/google/android/apps/camera/proxy/media/SimpleCamcorderProfileProxy;->audioSampleRate:I

    .line 38
    iput p5, p0, Lcom/google/android/apps/camera/proxy/media/SimpleCamcorderProfileProxy;->fileFormat:I

    .line 39
    iput p6, p0, Lcom/google/android/apps/camera/proxy/media/SimpleCamcorderProfileProxy;->quality:I

    .line 40
    iput p7, p0, Lcom/google/android/apps/camera/proxy/media/SimpleCamcorderProfileProxy;->videoBitRate:I

    .line 41
    iput p8, p0, Lcom/google/android/apps/camera/proxy/media/SimpleCamcorderProfileProxy;->videoCodec:I

    .line 42
    iput p9, p0, Lcom/google/android/apps/camera/proxy/media/SimpleCamcorderProfileProxy;->videoFrameHeight:I

    .line 43
    iput p10, p0, Lcom/google/android/apps/camera/proxy/media/SimpleCamcorderProfileProxy;->videoFrameRate:I

    .line 44
    iput p11, p0, Lcom/google/android/apps/camera/proxy/media/SimpleCamcorderProfileProxy;->videoFrameWidth:I

    .line 45
    return-void
.end method


# virtual methods
.method public final audioBitRate()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/google/android/apps/camera/proxy/media/SimpleCamcorderProfileProxy;->audioBitRate:I

    return v0
.end method

.method public final audioChannels()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/google/android/apps/camera/proxy/media/SimpleCamcorderProfileProxy;->audioChannels:I

    return v0
.end method

.method public final audioCodec()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/google/android/apps/camera/proxy/media/SimpleCamcorderProfileProxy;->audioCodec:I

    return v0
.end method

.method public final audioSampleRate()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/google/android/apps/camera/proxy/media/SimpleCamcorderProfileProxy;->audioSampleRate:I

    return v0
.end method

.method public final fileFormat()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/google/android/apps/camera/proxy/media/SimpleCamcorderProfileProxy;->fileFormat:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 104
    invoke-static {p0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "audioBitRate"

    iget v2, p0, Lcom/google/android/apps/camera/proxy/media/SimpleCamcorderProfileProxy;->audioBitRate:I

    .line 105
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "audioChannels"

    iget v2, p0, Lcom/google/android/apps/camera/proxy/media/SimpleCamcorderProfileProxy;->audioChannels:I

    .line 106
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "audioCodec"

    iget v2, p0, Lcom/google/android/apps/camera/proxy/media/SimpleCamcorderProfileProxy;->audioCodec:I

    .line 107
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "audioSampleRate"

    iget v2, p0, Lcom/google/android/apps/camera/proxy/media/SimpleCamcorderProfileProxy;->audioSampleRate:I

    .line 108
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "fileFormat"

    iget v2, p0, Lcom/google/android/apps/camera/proxy/media/SimpleCamcorderProfileProxy;->fileFormat:I

    .line 109
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "quality"

    iget v2, p0, Lcom/google/android/apps/camera/proxy/media/SimpleCamcorderProfileProxy;->quality:I

    .line 110
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "videoBitRate"

    iget v2, p0, Lcom/google/android/apps/camera/proxy/media/SimpleCamcorderProfileProxy;->videoBitRate:I

    .line 111
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "videoCodec"

    iget v2, p0, Lcom/google/android/apps/camera/proxy/media/SimpleCamcorderProfileProxy;->videoCodec:I

    .line 112
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "videoFrameHeight"

    iget v2, p0, Lcom/google/android/apps/camera/proxy/media/SimpleCamcorderProfileProxy;->videoFrameHeight:I

    .line 113
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "videoFrameRate"

    iget v2, p0, Lcom/google/android/apps/camera/proxy/media/SimpleCamcorderProfileProxy;->videoFrameRate:I

    .line 114
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "videoFrameWidth"

    iget v2, p0, Lcom/google/android/apps/camera/proxy/media/SimpleCamcorderProfileProxy;->videoFrameWidth:I

    .line 115
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 104
    return-object v0
.end method

.method public final videoBitRate()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/google/android/apps/camera/proxy/media/SimpleCamcorderProfileProxy;->videoBitRate:I

    return v0
.end method

.method public final videoCodec()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/google/android/apps/camera/proxy/media/SimpleCamcorderProfileProxy;->videoCodec:I

    return v0
.end method

.method public final videoFrameHeight()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/google/android/apps/camera/proxy/media/SimpleCamcorderProfileProxy;->videoFrameHeight:I

    return v0
.end method

.method public final videoFrameRate()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/google/android/apps/camera/proxy/media/SimpleCamcorderProfileProxy;->videoFrameRate:I

    return v0
.end method

.method public final videoFrameWidth()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/google/android/apps/camera/proxy/media/SimpleCamcorderProfileProxy;->videoFrameWidth:I

    return v0
.end method
