.class public final Lcom/android/camera/data/VideoItemDataBuilder;
.super Lcom/android/camera/data/FilmstripItemDataBuilder;
.source "VideoItemDataBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/data/FilmstripItemDataBuilder",
        "<",
        "Lcom/android/camera/data/VideoItemDataBuilder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/android/camera/data/FilmstripItemDataBuilder;-><init>(Landroid/net/Uri;)V

    .line 10
    return-void
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/android/camera/data/FilmstripItemData;
    .locals 1

    .prologue
    .line 5
    invoke-virtual {p0}, Lcom/android/camera/data/VideoItemDataBuilder;->build()Lcom/android/camera/data/VideoItemData;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/android/camera/data/VideoItemData;
    .locals 20

    .prologue
    .line 19
    new-instance v3, Lcom/android/camera/data/VideoItemData;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/camera/data/VideoItemDataBuilder;->contentId:J

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/data/VideoItemDataBuilder;->title:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/data/VideoItemDataBuilder;->mimeType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/data/VideoItemDataBuilder;->creationDate:Ljava/util/Date;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/data/VideoItemDataBuilder;->lastModifiedDate:Ljava/util/Date;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/camera/data/VideoItemDataBuilder;->filePath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/data/VideoItemDataBuilder;->uri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/camera/data/VideoItemDataBuilder;->inProgress:Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/data/VideoItemDataBuilder;->dimensions:Lcom/android/camera/util/Size;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/camera/data/VideoItemDataBuilder;->sizeInBytes:J

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/data/VideoItemDataBuilder;->location:Lcom/android/camera/data/Location;

    move-object/from16 v17, v0

    const-wide/16 v18, 0x0

    invoke-direct/range {v3 .. v19}, Lcom/android/camera/data/VideoItemData;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;Landroid/net/Uri;ZLcom/android/camera/util/Size;JILcom/android/camera/data/Location;J)V

    return-object v3
.end method

.method protected final synthetic getBuilder()Lcom/android/camera/data/FilmstripItemDataBuilder;
    .locals 0

    .prologue
    .line 5
    return-object p0
.end method
