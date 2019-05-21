.class public final Lcom/android/camera/storage/mediastore/VideoContentValuesBuilder;
.super Ljava/lang/Object;
.source "VideoContentValuesBuilder.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# instance fields
.field private final contentValuesProxyFactory:Lcom/android/camera/storage/mediastore/ContentValuesProxy$Factory;

.field private duration:J

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

.field private size:Lcom/android/camera/util/Size;

.field private takenTime:J

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/camera/storage/mediastore/ContentValuesProxy$Factory;)V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-wide v2, p0, Lcom/android/camera/storage/mediastore/VideoContentValuesBuilder;->duration:J

    .line 26
    iput-object v0, p0, Lcom/android/camera/storage/mediastore/VideoContentValuesBuilder;->file:Ljava/io/File;

    .line 27
    iput-object v0, p0, Lcom/android/camera/storage/mediastore/VideoContentValuesBuilder;->location:Lcom/google/common/base/Optional;

    .line 28
    iput-object v0, p0, Lcom/android/camera/storage/mediastore/VideoContentValuesBuilder;->mimeType:Lcom/android/camera/storage/MimeType;

    .line 29
    iput-object v0, p0, Lcom/android/camera/storage/mediastore/VideoContentValuesBuilder;->size:Lcom/android/camera/util/Size;

    .line 30
    iput-wide v2, p0, Lcom/android/camera/storage/mediastore/VideoContentValuesBuilder;->takenTime:J

    .line 31
    iput-object v0, p0, Lcom/android/camera/storage/mediastore/VideoContentValuesBuilder;->title:Ljava/lang/String;

    .line 34
    iput-object p1, p0, Lcom/android/camera/storage/mediastore/VideoContentValuesBuilder;->contentValuesProxyFactory:Lcom/android/camera/storage/mediastore/ContentValuesProxy$Factory;

    .line 35
    return-void
.end method


# virtual methods
.method public final build()Lcom/android/camera/storage/mediastore/ContentValuesProxy;
    .locals 6

    .prologue
    const-wide/16 v2, 0x0

    .line 93
    iget-wide v0, p0, Lcom/android/camera/storage/mediastore/VideoContentValuesBuilder;->duration:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 94
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "video duration is not set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/android/camera/storage/mediastore/VideoContentValuesBuilder;->file:Ljava/io/File;

    if-nez v0, :cond_1

    .line 97
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "video file is not set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/android/camera/storage/mediastore/VideoContentValuesBuilder;->location:Lcom/google/common/base/Optional;

    if-nez v0, :cond_2

    .line 100
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "video location optional is not set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_2
    iget-object v0, p0, Lcom/android/camera/storage/mediastore/VideoContentValuesBuilder;->mimeType:Lcom/android/camera/storage/MimeType;

    if-nez v0, :cond_3

    .line 103
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "video MIME type is not set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_3
    iget-object v0, p0, Lcom/android/camera/storage/mediastore/VideoContentValuesBuilder;->size:Lcom/android/camera/util/Size;

    if-nez v0, :cond_4

    .line 106
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "video resolution is not set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_4
    iget-wide v0, p0, Lcom/android/camera/storage/mediastore/VideoContentValuesBuilder;->takenTime:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_5

    .line 109
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "video taken time is not set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_5
    iget-object v0, p0, Lcom/android/camera/storage/mediastore/VideoContentValuesBuilder;->title:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 112
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "video title is not set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_6
    iget-object v0, p0, Lcom/android/camera/storage/mediastore/VideoContentValuesBuilder;->contentValuesProxyFactory:Lcom/android/camera/storage/mediastore/ContentValuesProxy$Factory;

    invoke-virtual {v0}, Lcom/android/camera/storage/mediastore/ContentValuesProxy$Factory;->createContentValuesProxy()Lcom/android/camera/storage/mediastore/ContentValuesProxy;

    move-result-object v1

    .line 117
    const-string v0, "_data"

    iget-object v2, p0, Lcom/android/camera/storage/mediastore/VideoContentValuesBuilder;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/camera/storage/mediastore/ContentValuesProxy;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v0, "_size"

    iget-object v2, p0, Lcom/android/camera/storage/mediastore/VideoContentValuesBuilder;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/camera/storage/mediastore/ContentValuesProxy;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 119
    const-string v0, "_display_name"

    iget-object v2, p0, Lcom/android/camera/storage/mediastore/VideoContentValuesBuilder;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/camera/storage/mediastore/ContentValuesProxy;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string v0, "title"

    iget-object v2, p0, Lcom/android/camera/storage/mediastore/VideoContentValuesBuilder;->title:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/android/camera/storage/mediastore/ContentValuesProxy;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string v0, "date_added"

    iget-wide v2, p0, Lcom/android/camera/storage/mediastore/VideoContentValuesBuilder;->takenTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/camera/storage/mediastore/ContentValuesProxy;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 122
    const-string v0, "mime_type"

    iget-object v2, p0, Lcom/android/camera/storage/mediastore/VideoContentValuesBuilder;->mimeType:Lcom/android/camera/storage/MimeType;

    invoke-virtual {v2}, Lcom/android/camera/storage/MimeType;->get()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/camera/storage/mediastore/ContentValuesProxy;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v0, "width"

    iget-object v2, p0, Lcom/android/camera/storage/mediastore/VideoContentValuesBuilder;->size:Lcom/android/camera/util/Size;

    invoke-virtual {v2}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/camera/storage/mediastore/ContentValuesProxy;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 124
    const-string v0, "height"

    iget-object v2, p0, Lcom/android/camera/storage/mediastore/VideoContentValuesBuilder;->size:Lcom/android/camera/util/Size;

    invoke-virtual {v2}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/camera/storage/mediastore/ContentValuesProxy;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 126
    const-string v0, "duration"

    iget-wide v2, p0, Lcom/android/camera/storage/mediastore/VideoContentValuesBuilder;->duration:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/camera/storage/mediastore/ContentValuesProxy;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 127
    iget-object v0, p0, Lcom/android/camera/storage/mediastore/VideoContentValuesBuilder;->size:Lcom/android/camera/util/Size;

    .line 128
    invoke-virtual {v0}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/storage/mediastore/VideoContentValuesBuilder;->size:Lcom/android/camera/util/Size;

    invoke-virtual {v2}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 129
    const-string v2, "resolution"

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/storage/mediastore/ContentValuesProxy;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/android/camera/storage/mediastore/VideoContentValuesBuilder;->location:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 131
    const-string v2, "latitude"

    iget-object v0, p0, Lcom/android/camera/storage/mediastore/VideoContentValuesBuilder;->location:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/storage/mediastore/ContentValuesProxy;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 132
    const-string v2, "longitude"

    iget-object v0, p0, Lcom/android/camera/storage/mediastore/VideoContentValuesBuilder;->location:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/storage/mediastore/ContentValuesProxy;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 134
    :cond_7
    const-string v0, "datetaken"

    iget-wide v2, p0, Lcom/android/camera/storage/mediastore/VideoContentValuesBuilder;->takenTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/camera/storage/mediastore/ContentValuesProxy;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 135
    return-object v1
.end method

.method public final duration(J)Lcom/android/camera/storage/mediastore/VideoContentValuesBuilder;
    .locals 3

    .prologue
    .line 38
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x2b

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "invalid video duration "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_0
    iput-wide p1, p0, Lcom/android/camera/storage/mediastore/VideoContentValuesBuilder;->duration:J

    .line 42
    return-object p0
.end method

.method public final file(Ljava/io/File;)Lcom/android/camera/storage/mediastore/VideoContentValuesBuilder;
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/camera/storage/mediastore/VideoContentValuesBuilder;->file:Ljava/io/File;

    .line 47
    return-object p0
.end method

.method public final location(Lcom/google/common/base/Optional;)Lcom/android/camera/storage/mediastore/VideoContentValuesBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Optional",
            "<",
            "Landroid/location/Location;",
            ">;)",
            "Lcom/android/camera/storage/mediastore/VideoContentValuesBuilder;"
        }
    .end annotation

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/camera/storage/mediastore/VideoContentValuesBuilder;->location:Lcom/google/common/base/Optional;

    .line 52
    return-object p0
.end method

.method public final mimeType(Lcom/android/camera/storage/MimeType;)Lcom/android/camera/storage/mediastore/VideoContentValuesBuilder;
    .locals 4

    .prologue
    .line 56
    invoke-virtual {p1}, Lcom/android/camera/storage/MimeType;->isVideo()Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
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

    const-string v3, "invalid video MIME type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_0
    iput-object p1, p0, Lcom/android/camera/storage/mediastore/VideoContentValuesBuilder;->mimeType:Lcom/android/camera/storage/MimeType;

    .line 60
    return-object p0
.end method

.method public final size(Lcom/android/camera/util/Size;)Lcom/android/camera/storage/mediastore/VideoContentValuesBuilder;
    .locals 4

    .prologue
    .line 64
    invoke-virtual {p1}, Lcom/android/camera/util/Size;->area()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 65
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

    const-string v3, "invalid video size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_0
    iput-object p1, p0, Lcom/android/camera/storage/mediastore/VideoContentValuesBuilder;->size:Lcom/android/camera/util/Size;

    .line 68
    return-object p0
.end method

.method public final takenTime(J)Lcom/android/camera/storage/mediastore/VideoContentValuesBuilder;
    .locals 3

    .prologue
    .line 72
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 73
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x2d

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "invalid video taken time "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_0
    iput-wide p1, p0, Lcom/android/camera/storage/mediastore/VideoContentValuesBuilder;->takenTime:J

    .line 76
    return-object p0
.end method

.method public final title(Ljava/lang/String;)Lcom/android/camera/storage/mediastore/VideoContentValuesBuilder;
    .locals 2

    .prologue
    .line 80
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "empty video title"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_0
    iput-object p1, p0, Lcom/android/camera/storage/mediastore/VideoContentValuesBuilder;->title:Ljava/lang/String;

    .line 84
    return-object p0
.end method
