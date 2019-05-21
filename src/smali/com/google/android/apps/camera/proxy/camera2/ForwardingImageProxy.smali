.class public Lcom/google/android/apps/camera/proxy/camera2/ForwardingImageProxy;
.super Ljava/lang/Object;
.source "ForwardingImageProxy.java"

# interfaces
.implements Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;


# instance fields
.field private final impl:Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/google/android/apps/camera/proxy/camera2/ForwardingImageProxy;->impl:Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    .line 18
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/apps/camera/proxy/camera2/ForwardingImageProxy;->impl:Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    invoke-interface {v0}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->close()V

    .line 82
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 96
    if-nez p1, :cond_1

    .line 106
    :cond_0
    :goto_0
    return v0

    .line 99
    :cond_1
    instance-of v1, p1, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    if-eqz v1, :cond_0

    .line 102
    check-cast p1, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    .line 103
    invoke-interface {p1}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getFormat()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/apps/camera/proxy/camera2/ForwardingImageProxy;->getFormat()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 104
    invoke-interface {p1}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/apps/camera/proxy/camera2/ForwardingImageProxy;->getWidth()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 105
    invoke-interface {p1}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/apps/camera/proxy/camera2/ForwardingImageProxy;->getHeight()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 106
    invoke-interface {p1}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/google/android/apps/camera/proxy/camera2/ForwardingImageProxy;->getTimestamp()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final getAndroidImage()Lcom/google/android/apps/camera/proxy/camera2/AndroidObjectHandle;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/apps/camera/proxy/camera2/AndroidObjectHandle",
            "<",
            "Landroid/media/Image;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/android/apps/camera/proxy/camera2/ForwardingImageProxy;->impl:Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    invoke-interface {v0}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getAndroidImage()Lcom/google/android/apps/camera/proxy/camera2/AndroidObjectHandle;

    move-result-object v0

    return-object v0
.end method

.method public final getCropRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/apps/camera/proxy/camera2/ForwardingImageProxy;->impl:Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    invoke-interface {v0}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getCropRect()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public final getFormat()I
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/apps/camera/proxy/camera2/ForwardingImageProxy;->impl:Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    invoke-interface {v0}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getFormat()I

    move-result v0

    return v0
.end method

.method public final getHeight()I
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/apps/camera/proxy/camera2/ForwardingImageProxy;->impl:Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    invoke-interface {v0}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getHeight()I

    move-result v0

    return v0
.end method

.method public final getPlanes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/apps/camera/proxy/camera2/ForwardingImageProxy;->impl:Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    invoke-interface {v0}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getPlanes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getTimestamp()J
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/apps/camera/proxy/camera2/ForwardingImageProxy;->impl:Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    invoke-interface {v0}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getWidth()I
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/apps/camera/proxy/camera2/ForwardingImageProxy;->impl:Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    invoke-interface {v0}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getWidth()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 111
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/apps/camera/proxy/camera2/ForwardingImageProxy;->getFormat()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/apps/camera/proxy/camera2/ForwardingImageProxy;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/apps/camera/proxy/camera2/ForwardingImageProxy;->getHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/apps/camera/proxy/camera2/ForwardingImageProxy;->getTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1079
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 111
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 86
    invoke-static {p0}, Lcom/google/common/base/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "format"

    .line 87
    invoke-virtual {p0}, Lcom/google/android/apps/camera/proxy/camera2/ForwardingImageProxy;->getFormat()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "timestamp"

    .line 88
    invoke-virtual {p0}, Lcom/google/android/apps/camera/proxy/camera2/ForwardingImageProxy;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "width"

    .line 89
    invoke-virtual {p0}, Lcom/google/android/apps/camera/proxy/camera2/ForwardingImageProxy;->getWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "height"

    .line 90
    invoke-virtual {p0}, Lcom/google/android/apps/camera/proxy/camera2/ForwardingImageProxy;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Lcom/google/common/base/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    return-object v0
.end method
