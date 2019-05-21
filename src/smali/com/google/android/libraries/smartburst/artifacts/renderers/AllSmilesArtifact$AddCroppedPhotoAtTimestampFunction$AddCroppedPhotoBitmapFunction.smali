.class final Lcom/google/android/libraries/smartburst/artifacts/renderers/AllSmilesArtifact$AddCroppedPhotoAtTimestampFunction$AddCroppedPhotoBitmapFunction;
.super Lcom/google/android/libraries/smartburst/utils/VoidFunction;
.source "AllSmilesArtifact.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/smartburst/artifacts/renderers/AllSmilesArtifact$AddCroppedPhotoAtTimestampFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AddCroppedPhotoBitmapFunction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/libraries/smartburst/utils/VoidFunction",
        "<",
        "Lcom/google/android/libraries/smartburst/media/BitmapLoader;",
        ">;"
    }
.end annotation


# instance fields
.field private final mFaceCropData:Lcom/google/android/libraries/smartburst/artifacts/renderers/AllSmilesArtifact$FaceCropData;

.field private synthetic this$1:Lcom/google/android/libraries/smartburst/artifacts/renderers/AllSmilesArtifact$AddCroppedPhotoAtTimestampFunction;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/smartburst/artifacts/renderers/AllSmilesArtifact$AddCroppedPhotoAtTimestampFunction;Lcom/google/android/libraries/smartburst/artifacts/renderers/AllSmilesArtifact$FaceCropData;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/artifacts/renderers/AllSmilesArtifact$AddCroppedPhotoAtTimestampFunction$AddCroppedPhotoBitmapFunction;->this$1:Lcom/google/android/libraries/smartburst/artifacts/renderers/AllSmilesArtifact$AddCroppedPhotoAtTimestampFunction;

    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/utils/VoidFunction;-><init>()V

    .line 185
    iput-object p2, p0, Lcom/google/android/libraries/smartburst/artifacts/renderers/AllSmilesArtifact$AddCroppedPhotoAtTimestampFunction$AddCroppedPhotoBitmapFunction;->mFaceCropData:Lcom/google/android/libraries/smartburst/artifacts/renderers/AllSmilesArtifact$FaceCropData;

    .line 186
    return-void
.end method


# virtual methods
.method public final synthetic process(Ljava/lang/Object;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 181
    check-cast p1, Lcom/google/android/libraries/smartburst/media/BitmapLoader;

    .line 1190
    invoke-static/range {p1 .. p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1193
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/libraries/smartburst/artifacts/renderers/AllSmilesArtifact$AddCroppedPhotoAtTimestampFunction$AddCroppedPhotoBitmapFunction;->this$1:Lcom/google/android/libraries/smartburst/artifacts/renderers/AllSmilesArtifact$AddCroppedPhotoAtTimestampFunction;

    .line 1194
    invoke-static {v2}, Lcom/google/android/libraries/smartburst/artifacts/renderers/AllSmilesArtifact$AddCroppedPhotoAtTimestampFunction;->access$000(Lcom/google/android/libraries/smartburst/artifacts/renderers/AllSmilesArtifact$AddCroppedPhotoAtTimestampFunction;)Lcom/google/android/libraries/smartburst/media/BitmapAllocator;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/libraries/smartburst/artifacts/renderers/AllSmilesArtifact$AddCroppedPhotoAtTimestampFunction$AddCroppedPhotoBitmapFunction;->this$1:Lcom/google/android/libraries/smartburst/artifacts/renderers/AllSmilesArtifact$AddCroppedPhotoAtTimestampFunction;

    invoke-static {v3}, Lcom/google/android/libraries/smartburst/artifacts/renderers/AllSmilesArtifact$AddCroppedPhotoAtTimestampFunction;->access$100(Lcom/google/android/libraries/smartburst/artifacts/renderers/AllSmilesArtifact$AddCroppedPhotoAtTimestampFunction;)Lcom/google/android/libraries/smartburst/utils/Size;

    move-result-object v3

    const-string v4, "all-smiles canvas"

    .line 1193
    invoke-static {v2, v3, v4}, Lcom/google/android/libraries/smartburst/media/BitmapAllocators;->createBlankWhiteBitmap(Lcom/google/android/libraries/smartburst/media/BitmapAllocator;Lcom/google/android/libraries/smartburst/utils/Size;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/media/BitmapHandle;

    move-result-object v5

    .line 1197
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/libraries/smartburst/artifacts/renderers/AllSmilesArtifact$AddCroppedPhotoAtTimestampFunction$AddCroppedPhotoBitmapFunction;->this$1:Lcom/google/android/libraries/smartburst/artifacts/renderers/AllSmilesArtifact$AddCroppedPhotoAtTimestampFunction;

    iget-object v2, v2, Lcom/google/android/libraries/smartburst/artifacts/renderers/AllSmilesArtifact$AddCroppedPhotoAtTimestampFunction;->this$0:Lcom/google/android/libraries/smartburst/artifacts/renderers/AllSmilesArtifact;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/libraries/smartburst/artifacts/renderers/AllSmilesArtifact$AddCroppedPhotoAtTimestampFunction$AddCroppedPhotoBitmapFunction;->this$1:Lcom/google/android/libraries/smartburst/artifacts/renderers/AllSmilesArtifact$AddCroppedPhotoAtTimestampFunction;

    invoke-static {v3}, Lcom/google/android/libraries/smartburst/artifacts/renderers/AllSmilesArtifact$AddCroppedPhotoAtTimestampFunction;->access$200(Lcom/google/android/libraries/smartburst/artifacts/renderers/AllSmilesArtifact$AddCroppedPhotoAtTimestampFunction;)Lcom/google/android/libraries/smartburst/media/Summary;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/libraries/smartburst/artifacts/renderers/AllSmilesArtifact;->access$300(Lcom/google/android/libraries/smartburst/artifacts/renderers/AllSmilesArtifact;Lcom/google/android/libraries/smartburst/media/Summary;)F

    move-result v2

    .line 1198
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/libraries/smartburst/artifacts/renderers/AllSmilesArtifact$AddCroppedPhotoAtTimestampFunction$AddCroppedPhotoBitmapFunction;->mFaceCropData:Lcom/google/android/libraries/smartburst/artifacts/renderers/AllSmilesArtifact$FaceCropData;

    iget-object v3, v3, Lcom/google/android/libraries/smartburst/artifacts/renderers/AllSmilesArtifact$FaceCropData;->faces:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/libraries/smartburst/artifacts/renderers/AllSmilesArtifact$AddCroppedPhotoAtTimestampFunction$AddCroppedPhotoBitmapFunction;->mFaceCropData:Lcom/google/android/libraries/smartburst/artifacts/renderers/AllSmilesArtifact$FaceCropData;

    iget-object v4, v4, Lcom/google/android/libraries/smartburst/artifacts/renderers/AllSmilesArtifact$FaceCropData;->faceBoxes:Ljava/util/List;

    invoke-static {v3, v4, v2}, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor;->getCroppedFaceData(Ljava/util/List;Ljava/util/List;F)Ljava/util/List;

    move-result-object v6

    .line 1201
    new-instance v7, Landroid/graphics/Canvas;

    invoke-interface {v5}, Lcom/google/android/libraries/smartburst/media/BitmapHandle;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-direct {v7, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1202
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 1203
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/libraries/smartburst/artifacts/renderers/AllSmilesArtifact$AddCroppedPhotoAtTimestampFunction$AddCroppedPhotoBitmapFunction;->mFaceCropData:Lcom/google/android/libraries/smartburst/artifacts/renderers/AllSmilesArtifact$FaceCropData;

    iget-object v2, v2, Lcom/google/android/libraries/smartburst/artifacts/renderers/AllSmilesArtifact$FaceCropData;->faceBoxes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 1204
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/Rect;

    .line 1205
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Rect;

    .line 1206
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/libraries/smartburst/artifacts/renderers/AllSmilesArtifact$AddCroppedPhotoAtTimestampFunction$AddCroppedPhotoBitmapFunction;->this$1:Lcom/google/android/libraries/smartburst/artifacts/renderers/AllSmilesArtifact$AddCroppedPhotoAtTimestampFunction;

    .line 1207
    invoke-static {v4}, Lcom/google/android/libraries/smartburst/artifacts/renderers/AllSmilesArtifact$AddCroppedPhotoAtTimestampFunction;->access$000(Lcom/google/android/libraries/smartburst/artifacts/renderers/AllSmilesArtifact$AddCroppedPhotoAtTimestampFunction;)Lcom/google/android/libraries/smartburst/media/BitmapAllocator;

    move-result-object v4

    .line 1206
    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4}, Lcom/google/android/libraries/smartburst/media/BitmapLoader;->loadRegion(Landroid/graphics/Rect;Lcom/google/android/libraries/smartburst/media/BitmapAllocator;)Lcom/google/android/libraries/smartburst/media/BitmapHandle;

    move-result-object v10

    const/4 v4, 0x0

    .line 1208
    :try_start_0
    invoke-interface {v10}, Lcom/google/android/libraries/smartburst/media/BitmapHandle;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isPremultiplied()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1209
    invoke-interface {v10}, Lcom/google/android/libraries/smartburst/media/BitmapHandle;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    const/4 v11, 0x1

    invoke-virtual {v3, v11}, Landroid/graphics/Bitmap;->setPremultiplied(Z)V

    .line 1212
    :cond_1
    invoke-interface {v10}, Lcom/google/android/libraries/smartburst/media/BitmapHandle;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    new-instance v11, Landroid/graphics/Rect;

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 1213
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v14

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v15

    invoke-direct {v11, v12, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1211
    invoke-virtual {v7, v3, v11, v2, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1216
    if-eqz v10, :cond_0

    invoke-interface {v10}, Lcom/google/android/libraries/smartburst/media/BitmapHandle;->close()V

    goto :goto_0

    .line 1206
    :catch_0
    move-exception v2

    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1216
    :catchall_0
    move-exception v3

    move-object/from16 v16, v3

    move-object v3, v2

    move-object/from16 v2, v16

    :goto_1
    if-eqz v10, :cond_2

    if-eqz v3, :cond_3

    :try_start_2
    invoke-interface {v10}, Lcom/google/android/libraries/smartburst/media/BitmapHandle;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :cond_2
    :goto_2
    throw v2

    :catch_1
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    invoke-interface {v10}, Lcom/google/android/libraries/smartburst/media/BitmapHandle;->close()V

    goto :goto_2

    .line 1218
    :cond_4
    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1221
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/libraries/smartburst/artifacts/renderers/AllSmilesArtifact$AddCroppedPhotoAtTimestampFunction$AddCroppedPhotoBitmapFunction;->this$1:Lcom/google/android/libraries/smartburst/artifacts/renderers/AllSmilesArtifact$AddCroppedPhotoAtTimestampFunction;

    invoke-static {v2}, Lcom/google/android/libraries/smartburst/artifacts/renderers/AllSmilesArtifact$AddCroppedPhotoAtTimestampFunction;->access$400(Lcom/google/android/libraries/smartburst/artifacts/renderers/AllSmilesArtifact$AddCroppedPhotoAtTimestampFunction;)Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/libraries/smartburst/artifacts/renderers/AllSmilesArtifact$AddCroppedPhotoAtTimestampFunction$AddCroppedPhotoBitmapFunction;->mFaceCropData:Lcom/google/android/libraries/smartburst/artifacts/renderers/AllSmilesArtifact$FaceCropData;

    iget-wide v8, v3, Lcom/google/android/libraries/smartburst/artifacts/renderers/AllSmilesArtifact$FaceCropData;->timestampNs:J

    invoke-virtual {v2, v5, v6, v8, v9}, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor;->addPhoto(Lcom/google/android/libraries/smartburst/media/BitmapHandle;Ljava/util/List;J)V

    .line 181
    return-void

    .line 1216
    :catchall_1
    move-exception v2

    move-object v3, v4

    goto :goto_1
.end method
