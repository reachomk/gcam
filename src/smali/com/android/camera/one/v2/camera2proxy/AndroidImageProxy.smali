.class public final Lcom/android/camera/one/v2/camera2proxy/AndroidImageProxy;
.super Ljava/lang/Object;
.source "AndroidImageProxy.java"

# interfaces
.implements Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;


# instance fields
.field private cropRect:Landroid/graphics/Rect;

.field private final format:I

.field private final height:I

.field private final image:Landroid/media/Image;

.field private final lock:Ljava/lang/Object;

.field private planes:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;",
            ">;"
        }
    .end annotation
.end field

.field private final timestamp:J

.field private final width:I


# direct methods
.method public constructor <init>(Landroid/media/Image;)V
    .locals 2

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageProxy;->lock:Ljava/lang/Object;

    .line 87
    iput-object p1, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageProxy;->image:Landroid/media/Image;

    .line 92
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageProxy;->image:Landroid/media/Image;

    invoke-virtual {v0}, Landroid/media/Image;->getFormat()I

    move-result v0

    iput v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageProxy;->format:I

    .line 93
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageProxy;->image:Landroid/media/Image;

    invoke-virtual {v0}, Landroid/media/Image;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageProxy;->width:I

    .line 94
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageProxy;->image:Landroid/media/Image;

    invoke-virtual {v0}, Landroid/media/Image;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageProxy;->height:I

    .line 95
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageProxy;->image:Landroid/media/Image;

    invoke-virtual {v0}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageProxy;->timestamp:J

    .line 96
    return-void
.end method

.method private final readPlanes()Lcom/google/common/collect/ImmutableList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;",
            ">;"
        }
    .end annotation

    .prologue
    .line 221
    iget-object v1, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageProxy;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 222
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageProxy;->planes:Lcom/google/common/collect/ImmutableList;

    if-nez v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageProxy;->image:Landroid/media/Image;

    invoke-virtual {v0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v2

    .line 225
    if-nez v2, :cond_1

    .line 226
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageProxy;->planes:Lcom/google/common/collect/ImmutableList;

    .line 235
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageProxy;->planes:Lcom/google/common/collect/ImmutableList;

    monitor-exit v1

    return-object v0

    .line 228
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    array-length v0, v2

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 229
    const/4 v0, 0x0

    :goto_1
    array-length v4, v2

    if-ge v0, v4, :cond_2

    .line 230
    new-instance v4, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;

    aget-object v5, v2, v0

    invoke-direct {v4, v5}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy$Plane;-><init>(Landroid/media/Image$Plane;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 232
    :cond_2
    invoke-static {v3}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageProxy;->planes:Lcom/google/common/collect/ImmutableList;

    goto :goto_0

    .line 236
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final close()V
    .locals 2

    .prologue
    .line 174
    iget-object v1, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageProxy;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 175
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageProxy;->image:Landroid/media/Image;

    invoke-virtual {v0}, Landroid/media/Image;->close()V

    .line 176
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 196
    if-nez p1, :cond_1

    .line 206
    :cond_0
    :goto_0
    return v0

    .line 199
    :cond_1
    instance-of v1, p1, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    if-eqz v1, :cond_0

    .line 202
    check-cast p1, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    .line 203
    invoke-interface {p1}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getFormat()I

    move-result v1

    .line 3134
    iget v2, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageProxy;->format:I

    .line 203
    if-ne v1, v2, :cond_0

    .line 204
    invoke-interface {p1}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getWidth()I

    move-result v1

    .line 3166
    iget v2, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageProxy;->width:I

    .line 204
    if-ne v1, v2, :cond_0

    .line 205
    invoke-interface {p1}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getHeight()I

    move-result v1

    .line 4142
    iget v2, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageProxy;->height:I

    .line 205
    if-ne v1, v2, :cond_0

    .line 206
    invoke-interface {p1}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->getTimestamp()J

    move-result-wide v2

    .line 4158
    iget-wide v4, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageProxy;->timestamp:J

    .line 206
    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final getAndroidImage()Lcom/google/android/apps/camera/proxy/camera2/AndroidObjectHandle;
    .locals 2
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
    .line 181
    new-instance v0, Lcom/google/android/apps/camera/proxy/camera2/AndroidObjectHandle;

    iget-object v1, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageProxy;->image:Landroid/media/Image;

    invoke-direct {v0, v1}, Lcom/google/android/apps/camera/proxy/camera2/AndroidObjectHandle;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final getCropRect()Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 103
    iget-object v1, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageProxy;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageProxy;->image:Landroid/media/Image;

    invoke-virtual {v0}, Landroid/media/Image;->getCropRect()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageProxy;->cropRect:Landroid/graphics/Rect;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageProxy;->cropRect:Landroid/graphics/Rect;

    monitor-exit v1

    :goto_0
    return-object v0

    .line 108
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageProxy;->cropRect:Landroid/graphics/Rect;

    monitor-exit v1

    goto :goto_0

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final getFormat()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageProxy;->format:I

    return v0
.end method

.method public final getHeight()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageProxy;->height:I

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
    .line 150
    invoke-direct {p0}, Lcom/android/camera/one/v2/camera2proxy/AndroidImageProxy;->readPlanes()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public final getTimestamp()J
    .locals 2

    .prologue
    .line 158
    iget-wide v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageProxy;->timestamp:J

    return-wide v0
.end method

.method public final getWidth()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageProxy;->width:I

    return v0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    .line 211
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 5134
    iget v2, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageProxy;->format:I

    .line 211
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 5166
    iget v2, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageProxy;->width:I

    .line 211
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 6142
    iget v2, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageProxy;->height:I

    .line 211
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 6158
    iget-wide v2, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageProxy;->timestamp:J

    .line 211
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    .line 7079
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 211
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 186
    invoke-static {p0}, Lcom/google/common/base/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "format"

    .line 1134
    iget v2, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageProxy;->format:I

    .line 187
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "timestamp"

    .line 1158
    iget-wide v2, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageProxy;->timestamp:J

    .line 188
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "width"

    .line 1166
    iget v2, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageProxy;->width:I

    .line 189
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "height"

    .line 2142
    iget v2, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageProxy;->height:I

    .line 190
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    .line 191
    invoke-virtual {v0}, Lcom/google/common/base/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 186
    return-object v0
.end method
