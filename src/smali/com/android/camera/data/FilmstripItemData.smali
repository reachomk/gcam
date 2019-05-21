.class public Lcom/android/camera/data/FilmstripItemData;
.super Ljava/lang/Object;
.source "FilmstripItemData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/data/FilmstripItemData$Builder;
    }
.end annotation


# instance fields
.field private final cancellable:Z

.field private final contentId:J

.field private final creationDate:Ljava/util/Date;

.field private dimensions:Lcom/android/camera/util/Size;

.field private final filePath:Ljava/lang/String;

.field private final inProgress:Z

.field private final lastModifiedDate:Ljava/util/Date;

.field private final location:Lcom/android/camera/data/Location;

.field private final mimeType:Ljava/lang/String;

.field private final orientation:I

.field private final sizeInBytes:J

.field private final title:Ljava/lang/String;

.field private final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;Landroid/net/Uri;ZLcom/google/common/base/Optional;JILcom/android/camera/data/Location;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Z",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/util/Size;",
            ">;JI",
            "Lcom/android/camera/data/Location;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-wide p1, p0, Lcom/android/camera/data/FilmstripItemData;->contentId:J

    .line 54
    iput-object p3, p0, Lcom/android/camera/data/FilmstripItemData;->title:Ljava/lang/String;

    .line 55
    iput-object p4, p0, Lcom/android/camera/data/FilmstripItemData;->mimeType:Ljava/lang/String;

    .line 56
    iput-object p5, p0, Lcom/android/camera/data/FilmstripItemData;->creationDate:Ljava/util/Date;

    .line 57
    iput-object p6, p0, Lcom/android/camera/data/FilmstripItemData;->lastModifiedDate:Ljava/util/Date;

    .line 58
    iput-object p7, p0, Lcom/android/camera/data/FilmstripItemData;->filePath:Ljava/lang/String;

    .line 59
    iput-object p8, p0, Lcom/android/camera/data/FilmstripItemData;->uri:Landroid/net/Uri;

    .line 60
    iput-boolean p9, p0, Lcom/android/camera/data/FilmstripItemData;->inProgress:Z

    .line 61
    invoke-virtual {p10}, Lcom/google/common/base/Optional;->orNull()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/util/Size;

    iput-object v1, p0, Lcom/android/camera/data/FilmstripItemData;->dimensions:Lcom/android/camera/util/Size;

    .line 62
    iput-wide p11, p0, Lcom/android/camera/data/FilmstripItemData;->sizeInBytes:J

    .line 63
    move/from16 v0, p13

    iput v0, p0, Lcom/android/camera/data/FilmstripItemData;->orientation:I

    .line 64
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/android/camera/data/FilmstripItemData;->location:Lcom/android/camera/data/Location;

    .line 65
    move/from16 v0, p15

    iput-boolean v0, p0, Lcom/android/camera/data/FilmstripItemData;->cancellable:Z

    .line 66
    return-void
.end method


# virtual methods
.method public final getContentId()J
    .locals 2

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/android/camera/data/FilmstripItemData;->contentId:J

    return-wide v0
.end method

.method public final getCreationDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/camera/data/FilmstripItemData;->creationDate:Ljava/util/Date;

    return-object v0
.end method

.method final getDimensions()Lcom/android/camera/util/Size;
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 133
    iget-object v0, p0, Lcom/android/camera/data/FilmstripItemData;->dimensions:Lcom/android/camera/util/Size;

    if-nez v0, :cond_1

    .line 134
    iget-object v3, p0, Lcom/android/camera/data/FilmstripItemData;->filePath:Ljava/lang/String;

    .line 1266
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1267
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1268
    invoke-static {v3, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1269
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lez v1, :cond_2

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lez v1, :cond_2

    .line 1270
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 1271
    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 1289
    :cond_0
    new-instance v2, Lcom/android/camera/util/Size;

    invoke-direct {v2, v1, v0}, Lcom/android/camera/util/Size;-><init>(II)V

    move-object v0, v2

    .line 134
    :goto_0
    iput-object v0, p0, Lcom/android/camera/data/FilmstripItemData;->dimensions:Lcom/android/camera/util/Size;

    .line 135
    iget-object v0, p0, Lcom/android/camera/data/FilmstripItemData;->dimensions:Lcom/android/camera/util/Size;

    if-nez v0, :cond_1

    .line 136
    new-instance v0, Lcom/android/camera/util/Size;

    invoke-direct {v0, v6, v6}, Lcom/android/camera/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/android/camera/data/FilmstripItemData;->dimensions:Lcom/android/camera/util/Size;

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/android/camera/data/FilmstripItemData;->dimensions:Lcom/android/camera/util/Size;

    return-object v0

    .line 1273
    :cond_2
    const-string v1, "FilmstripItemData"

    const-string v4, "Dimension decode failed for "

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v1, v0}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1276
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1277
    if-nez v0, :cond_4

    .line 1278
    const-string v0, "FilmstripItemData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x24

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "PhotoData skipped. Decoding "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " failed."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    .line 1279
    goto :goto_0

    .line 1273
    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 1281
    :cond_4
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 1282
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 1283
    if-eqz v1, :cond_5

    if-nez v0, :cond_0

    .line 1284
    :cond_5
    const-string v1, "FilmstripItemData"

    const-string v4, "PhotoData skipped. Bitmap size 0 for "

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v1, v0}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    .line 1285
    goto :goto_0

    .line 1284
    :cond_6
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public final getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/camera/data/FilmstripItemData;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public final getLastModifiedDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/camera/data/FilmstripItemData;->lastModifiedDate:Ljava/util/Date;

    return-object v0
.end method

.method public final getLocation()Lcom/android/camera/data/Location;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/camera/data/FilmstripItemData;->location:Lcom/android/camera/data/Location;

    return-object v0
.end method

.method public final getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/camera/data/FilmstripItemData;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method final getOrientation()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lcom/android/camera/data/FilmstripItemData;->orientation:I

    return v0
.end method

.method public final getSizeInBytes()J
    .locals 2

    .prologue
    .line 146
    iget-wide v0, p0, Lcom/android/camera/data/FilmstripItemData;->sizeInBytes:J

    return-wide v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/camera/data/FilmstripItemData;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/camera/data/FilmstripItemData;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public final isCancellable()Z
    .locals 1

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/android/camera/data/FilmstripItemData;->cancellable:Z

    return v0
.end method

.method public final isInProgress()Z
    .locals 1

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/android/camera/data/FilmstripItemData;->inProgress:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
    const-string v1, "FilmstripItemData {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    const-string v1, "id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    iget-wide v2, p0, Lcom/android/camera/data/FilmstripItemData;->contentId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 201
    const-string v1, ",title:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    iget-object v1, p0, Lcom/android/camera/data/FilmstripItemData;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    const-string v1, ",mimeType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    iget-object v1, p0, Lcom/android/camera/data/FilmstripItemData;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    const-string v1, ",creationDate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    iget-object v1, p0, Lcom/android/camera/data/FilmstripItemData;->creationDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 207
    const-string v1, ",lastModifiedDate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    iget-object v1, p0, Lcom/android/camera/data/FilmstripItemData;->lastModifiedDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 209
    const-string v1, ",filePath:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    iget-object v1, p0, Lcom/android/camera/data/FilmstripItemData;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    const-string v1, ",uri:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    iget-object v1, p0, Lcom/android/camera/data/FilmstripItemData;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 213
    const-string v1, ",inProgress:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    iget-boolean v1, p0, Lcom/android/camera/data/FilmstripItemData;->inProgress:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 215
    const-string v1, ",dimensions:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    iget-object v1, p0, Lcom/android/camera/data/FilmstripItemData;->dimensions:Lcom/android/camera/util/Size;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 217
    const-string v1, ",sizeInBytes:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    iget-wide v2, p0, Lcom/android/camera/data/FilmstripItemData;->sizeInBytes:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 219
    const-string v1, ",orientation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    iget v1, p0, Lcom/android/camera/data/FilmstripItemData;->orientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 221
    const-string v1, ",location:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    iget-object v1, p0, Lcom/android/camera/data/FilmstripItemData;->location:Lcom/android/camera/data/Location;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 223
    const-string v1, ",cancellable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    iget-boolean v1, p0, Lcom/android/camera/data/FilmstripItemData;->cancellable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 225
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
