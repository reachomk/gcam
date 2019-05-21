.class public final Lcom/android/camera/storage/mediastore/ImageContentValuesBuilder;
.super Ljava/lang/Object;
.source "ImageContentValuesBuilder.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# instance fields
.field private final contentValuesProxyFactory:Lcom/android/camera/storage/mediastore/ContentValuesProxy$Factory;

.field private file:Ljava/io/File;

.field private location:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional",
            "<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field private mimeType:Lcom/android/camera/storage/MimeType;

.field private orientation:Lcom/google/android/apps/camera/util/layout/Orientation;

.field private size:Lcom/android/camera/util/Size;

.field private takenTime:J

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/camera/storage/mediastore/ContentValuesProxy$Factory;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v2, p0, Lcom/android/camera/storage/mediastore/ImageContentValuesBuilder;->file:Ljava/io/File;

    .line 28
    iput-object v2, p0, Lcom/android/camera/storage/mediastore/ImageContentValuesBuilder;->location:Lcom/google/common/base/Optional;

    .line 29
    iput-object v2, p0, Lcom/android/camera/storage/mediastore/ImageContentValuesBuilder;->mimeType:Lcom/android/camera/storage/MimeType;

    .line 30
    iput-object v2, p0, Lcom/android/camera/storage/mediastore/ImageContentValuesBuilder;->orientation:Lcom/google/android/apps/camera/util/layout/Orientation;

    .line 31
    iput-object v2, p0, Lcom/android/camera/storage/mediastore/ImageContentValuesBuilder;->size:Lcom/android/camera/util/Size;

    .line 32
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/camera/storage/mediastore/ImageContentValuesBuilder;->takenTime:J

    .line 33
    iput-object v2, p0, Lcom/android/camera/storage/mediastore/ImageContentValuesBuilder;->title:Ljava/lang/String;

    .line 36
    iput-object p1, p0, Lcom/android/camera/storage/mediastore/ImageContentValuesBuilder;->contentValuesProxyFactory:Lcom/android/camera/storage/mediastore/ContentValuesProxy$Factory;

    .line 37
    return-void
.end method


# virtual methods
.method public final build()Lcom/android/camera/storage/mediastore/ContentValuesProxy;
    .locals 6

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/camera/storage/mediastore/ImageContentValuesBuilder;->file:Ljava/io/File;

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "image file is not set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/android/camera/storage/mediastore/ImageContentValuesBuilder;->location:Lcom/google/common/base/Optional;

    if-nez v0, :cond_1

    .line 96
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "image location optional is not set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/android/camera/storage/mediastore/ImageContentValuesBuilder;->mimeType:Lcom/android/camera/storage/MimeType;

    if-nez v0, :cond_2

    .line 99
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "image MIME type is not set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_2
    iget-object v0, p0, Lcom/android/camera/storage/mediastore/ImageContentValuesBuilder;->orientation:Lcom/google/android/apps/camera/util/layout/Orientation;

    if-nez v0, :cond_3

    .line 102
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "image orientation is not set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_3
    iget-object v0, p0, Lcom/android/camera/storage/mediastore/ImageContentValuesBuilder;->size:Lcom/android/camera/util/Size;

    if-nez v0, :cond_4

    .line 105
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "image size is not set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_4
    iget-wide v0, p0, Lcom/android/camera/storage/mediastore/ImageContentValuesBuilder;->takenTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_5

    .line 108
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "image taken time is not set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_5
    iget-object v0, p0, Lcom/android/camera/storage/mediastore/ImageContentValuesBuilder;->title:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 111
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "image title is not set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_6
    iget-object v0, p0, Lcom/android/camera/storage/mediastore/ImageContentValuesBuilder;->contentValuesProxyFactory:Lcom/android/camera/storage/mediastore/ContentValuesProxy$Factory;

    invoke-virtual {v0}, Lcom/android/camera/storage/mediastore/ContentValuesProxy$Factory;->createContentValuesProxy()Lcom/android/camera/storage/mediastore/ContentValuesProxy;

    move-result-object v1

    .line 116
    const-string v0, "_data"

    iget-object v2, p0, Lcom/android/camera/storage/mediastore/ImageContentValuesBuilder;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/camera/storage/mediastore/ContentValuesProxy;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v0, "_size"

    iget-object v2, p0, Lcom/android/camera/storage/mediastore/ImageContentValuesBuilder;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/camera/storage/mediastore/ContentValuesProxy;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 118
    const-string v0, "_display_name"

    iget-object v2, p0, Lcom/android/camera/storage/mediastore/ImageContentValuesBuilder;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/camera/storage/mediastore/ContentValuesProxy;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v0, "title"

    iget-object v2, p0, Lcom/android/camera/storage/mediastore/ImageContentValuesBuilder;->title:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/android/camera/storage/mediastore/ContentValuesProxy;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string v0, "date_added"

    iget-wide v2, p0, Lcom/android/camera/storage/mediastore/ImageContentValuesBuilder;->takenTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/camera/storage/mediastore/ContentValuesProxy;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 121
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v2, p0, Lcom/android/camera/storage/mediastore/ImageContentValuesBuilder;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    .line 122
    const-string v0, "date_modified"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/camera/storage/mediastore/ContentValuesProxy;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 123
    const-string v0, "mime_type"

    iget-object v2, p0, Lcom/android/camera/storage/mediastore/ImageContentValuesBuilder;->mimeType:Lcom/android/camera/storage/MimeType;

    invoke-virtual {v2}, Lcom/android/camera/storage/MimeType;->get()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/camera/storage/mediastore/ContentValuesProxy;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v0, "width"

    iget-object v2, p0, Lcom/android/camera/storage/mediastore/ImageContentValuesBuilder;->size:Lcom/android/camera/util/Size;

    invoke-virtual {v2}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/camera/storage/mediastore/ContentValuesProxy;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 125
    const-string v0, "height"

    iget-object v2, p0, Lcom/android/camera/storage/mediastore/ImageContentValuesBuilder;->size:Lcom/android/camera/util/Size;

    invoke-virtual {v2}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/camera/storage/mediastore/ContentValuesProxy;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 127
    iget-object v0, p0, Lcom/android/camera/storage/mediastore/ImageContentValuesBuilder;->location:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 128
    const-string v2, "latitude"

    iget-object v0, p0, Lcom/android/camera/storage/mediastore/ImageContentValuesBuilder;->location:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/storage/mediastore/ContentValuesProxy;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 129
    const-string v2, "longitude"

    iget-object v0, p0, Lcom/android/camera/storage/mediastore/ImageContentValuesBuilder;->location:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/storage/mediastore/ContentValuesProxy;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 131
    :cond_7
    const-string v0, "datetaken"

    iget-wide v2, p0, Lcom/android/camera/storage/mediastore/ImageContentValuesBuilder;->takenTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/camera/storage/mediastore/ContentValuesProxy;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 132
    const-string v0, "orientation"

    iget-object v2, p0, Lcom/android/camera/storage/mediastore/ImageContentValuesBuilder;->orientation:Lcom/google/android/apps/camera/util/layout/Orientation;

    invoke-virtual {v2}, Lcom/google/android/apps/camera/util/layout/Orientation;->getDegrees()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/camera/storage/mediastore/ContentValuesProxy;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 133
    return-object v1
.end method

.method public final file(Ljava/io/File;)Lcom/android/camera/storage/mediastore/ImageContentValuesBuilder;
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/camera/storage/mediastore/ImageContentValuesBuilder;->file:Ljava/io/File;

    .line 41
    return-object p0
.end method

.method public final location(Lcom/google/common/base/Optional;)Lcom/android/camera/storage/mediastore/ImageContentValuesBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Optional",
            "<",
            "Landroid/location/Location;",
            ">;)",
            "Lcom/android/camera/storage/mediastore/ImageContentValuesBuilder;"
        }
    .end annotation

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/camera/storage/mediastore/ImageContentValuesBuilder;->location:Lcom/google/common/base/Optional;

    .line 46
    return-object p0
.end method

.method public final mimeType(Lcom/android/camera/storage/MimeType;)Lcom/android/camera/storage/mediastore/ImageContentValuesBuilder;
    .locals 4

    .prologue
    .line 50
    invoke-virtual {p1}, Lcom/android/camera/storage/MimeType;->isImage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x18

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "invalid image MIME type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_0
    iput-object p1, p0, Lcom/android/camera/storage/mediastore/ImageContentValuesBuilder;->mimeType:Lcom/android/camera/storage/MimeType;

    .line 54
    return-object p0
.end method

.method public final orientation(Lcom/google/android/apps/camera/util/layout/Orientation;)Lcom/android/camera/storage/mediastore/ImageContentValuesBuilder;
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/camera/storage/mediastore/ImageContentValuesBuilder;->orientation:Lcom/google/android/apps/camera/util/layout/Orientation;

    .line 59
    return-object p0
.end method

.method public final size(Lcom/android/camera/util/Size;)Lcom/android/camera/storage/mediastore/ImageContentValuesBuilder;
    .locals 4

    .prologue
    .line 63
    invoke-virtual {p1}, Lcom/android/camera/util/Size;->area()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x13

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "invalid image size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_0
    iput-object p1, p0, Lcom/android/camera/storage/mediastore/ImageContentValuesBuilder;->size:Lcom/android/camera/util/Size;

    .line 67
    return-object p0
.end method

.method public final takenTime(J)Lcom/android/camera/storage/mediastore/ImageContentValuesBuilder;
    .locals 3

    .prologue
    .line 71
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 72
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x2d

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "invalid image taken time "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_0
    iput-wide p1, p0, Lcom/android/camera/storage/mediastore/ImageContentValuesBuilder;->takenTime:J

    .line 75
    return-object p0
.end method

.method public final title(Ljava/lang/String;)Lcom/android/camera/storage/mediastore/ImageContentValuesBuilder;
    .locals 2

    .prologue
    .line 79
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "empty image title"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_0
    iput-object p1, p0, Lcom/android/camera/storage/mediastore/ImageContentValuesBuilder;->title:Ljava/lang/String;

    .line 83
    return-object p0
.end method
