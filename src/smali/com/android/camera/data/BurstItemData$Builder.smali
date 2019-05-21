.class public final Lcom/android/camera/data/BurstItemData$Builder;
.super Lcom/android/camera/data/FilmstripItemDataBuilder;
.source "BurstItemData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/data/BurstItemData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/data/FilmstripItemDataBuilder",
        "<",
        "Lcom/android/camera/data/BurstItemData$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private burstList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/data/BurstFrameItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 351
    invoke-direct {p0, p1}, Lcom/android/camera/data/FilmstripItemDataBuilder;-><init>(Landroid/net/Uri;)V

    .line 348
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/data/BurstItemData$Builder;->burstList:Ljava/util/List;

    .line 352
    return-void
.end method


# virtual methods
.method public final build()Lcom/android/camera/data/BurstItemData;
    .locals 19

    .prologue
    .line 361
    new-instance v3, Lcom/android/camera/data/BurstItemData;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/camera/data/BurstItemData$Builder;->contentId:J

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/data/BurstItemData$Builder;->title:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/data/BurstItemData$Builder;->mimeType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/data/BurstItemData$Builder;->creationDate:Ljava/util/Date;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/data/BurstItemData$Builder;->lastModifiedDate:Ljava/util/Date;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/camera/data/BurstItemData$Builder;->filePath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/data/BurstItemData$Builder;->uri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/camera/data/BurstItemData$Builder;->inProgress:Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/data/BurstItemData$Builder;->dimensions:Lcom/android/camera/util/Size;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/camera/data/BurstItemData$Builder;->sizeInBytes:J

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/data/BurstItemData$Builder;->location:Lcom/android/camera/data/Location;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/data/BurstItemData$Builder;->burstList:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-direct/range {v3 .. v18}, Lcom/android/camera/data/BurstItemData;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;Landroid/net/Uri;ZLcom/android/camera/util/Size;JILcom/android/camera/data/Location;Ljava/util/List;)V

    return-object v3
.end method

.method public final bridge synthetic build()Lcom/android/camera/data/FilmstripItemData;
    .locals 1

    .prologue
    .line 347
    invoke-virtual {p0}, Lcom/android/camera/data/BurstItemData$Builder;->build()Lcom/android/camera/data/BurstItemData;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic getBuilder()Lcom/android/camera/data/FilmstripItemDataBuilder;
    .locals 0

    .prologue
    .line 347
    return-object p0
.end method

.method public final withBurstList(Ljava/util/List;)Lcom/android/camera/data/BurstItemData$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/data/BurstFrameItem;",
            ">;)",
            "Lcom/android/camera/data/BurstItemData$Builder;"
        }
    .end annotation

    .prologue
    .line 400
    iput-object p1, p0, Lcom/android/camera/data/BurstItemData$Builder;->burstList:Ljava/util/List;

    .line 401
    return-object p0
.end method
