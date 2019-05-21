.class public Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor;
.super Ljava/lang/Object;
.source "FaceEditor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor$FaceData;,
        Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor$Builder;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final IS_LEFT_EYE_OPEN_SCORE_WEIGHT:F = 0.25f

.field private static final IS_RIGHT_EYE_OPEN_SCORE_WEIGHT:F = 0.25f

.field private static final IS_SMILING_SCORE_WEIGHT:F = 0.5f

.field private static final TAG:Ljava/lang/String; = "FaceEditor"


# instance fields
.field private mBestInputBitmap:Lcom/google/android/libraries/smartburst/media/BitmapHandle;

.field private mBestInputBitmapTimestampNs:J

.field private mBestInputJoyScore:F

.field private final mConfiguredForAnimation:Z

.field private final mConfiguredForPittPatt:Z

.field private final mContextBuffer:Ljava/nio/ByteBuffer;

.field private final mHeight:I

.field private final mIndexTimestampMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 567
    const-string v0, "smartburst-jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 568
    return-void
.end method

.method private constructor <init>(IILjava/nio/ByteBuffer;Z)V
    .locals 4

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor;->getContextLength()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor;->mContextBuffer:Ljava/nio/ByteBuffer;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor;->mIndexTimestampMap:Ljava/util/Map;

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor;->mBestInputBitmap:Lcom/google/android/libraries/smartburst/media/BitmapHandle;

    .line 48
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor;->mBestInputBitmapTimestampNs:J

    .line 148
    iput p1, p0, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor;->mWidth:I

    .line 149
    iput p2, p0, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor;->mHeight:I

    .line 150
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor;->mBestInputJoyScore:F

    .line 151
    if-eqz p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor;->mConfiguredForPittPatt:Z

    .line 152
    iput-boolean p4, p0, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor;->mConfiguredForAnimation:Z

    .line 154
    iget-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor;->mConfiguredForPittPatt:Z

    if-eqz v0, :cond_1

    .line 156
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p3, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 157
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 158
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 159
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->limit()I

    move-result v1

    new-array v1, v1, [F

    .line 160
    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->get([F)Ljava/nio/FloatBuffer;

    .line 163
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor;->mContextBuffer:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor;->mWidth:I

    iget v3, p0, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor;->mHeight:I

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor;->faceEditingSetUpWithModels(Ljava/nio/ByteBuffer;II[F)V

    .line 168
    :goto_1
    return-void

    .line 151
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor;->mContextBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor;->mWidth:I

    iget v2, p0, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor;->mHeight:I

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor;->faceEditingSetUp(Ljava/nio/ByteBuffer;II)V

    goto :goto_1
.end method

.method synthetic constructor <init>(IILjava/nio/ByteBuffer;ZLcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor$1;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor;-><init>(IILjava/nio/ByteBuffer;Z)V

    return-void
.end method

.method private declared-synchronized closeInputBitmap()V
    .locals 1

    .prologue
    .line 176
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor;->mBestInputBitmap:Lcom/google/android/libraries/smartburst/media/BitmapHandle;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor;->mBestInputBitmap:Lcom/google/android/libraries/smartburst/media/BitmapHandle;

    invoke-interface {v0}, Lcom/google/android/libraries/smartburst/media/BitmapHandle;->close()V

    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor;->mBestInputBitmap:Lcom/google/android/libraries/smartburst/media/BitmapHandle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    :cond_0
    monitor-exit p0

    return-void

    .line 176
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private native faceEditingAddPhoto(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;II)V
.end method

.method private native faceEditingAddPhotoWithFaces(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;[FII)V
.end method

.method private native faceEditingCreateAllSmiles(Ljava/nio/ByteBuffer;Z)[B
.end method

.method private native faceEditingCreateAnimation(Ljava/nio/ByteBuffer;Z)[B
.end method

.method private native faceEditingReferenceIndex(Ljava/nio/ByteBuffer;)I
.end method

.method private native faceEditingSetUp(Ljava/nio/ByteBuffer;II)V
.end method

.method private native faceEditingSetUpWithModels(Ljava/nio/ByteBuffer;II[F)V
.end method

.method private native faceEditingTearDown(Ljava/nio/ByteBuffer;)V
.end method

.method private native getContextLength()I
.end method

.method public static getCroppedFaceData(Ljava/util/List;Ljava/util/List;F)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vision/face/Face;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            ">;>;F)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor$FaceData;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 530
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(Z)V

    .line 531
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v3, v1

    .line 532
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_1

    .line 533
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 534
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/vision/face/Face;

    .line 535
    new-instance v5, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor$FaceData;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Rect;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Rect;

    invoke-direct {v5, v2, v0, v1, p2}, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor$FaceData;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/google/android/vision/face/Face;F)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 532
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    :cond_0
    move v0, v1

    .line 530
    goto :goto_0

    .line 537
    :cond_1
    return-object v4
.end method

.method public static getUncroppedFaceData(Ljava/util/List;F)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vision/face/Face;",
            ">;F)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor$FaceData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 511
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 512
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 513
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/vision/face/Face;

    .line 514
    new-instance v3, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor$FaceData;

    invoke-direct {v3, v0, p1}, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor$FaceData;-><init>(Lcom/google/android/vision/face/Face;F)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 512
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 516
    :cond_0
    return-object v2
.end method


# virtual methods
.method public declared-synchronized addPhoto(Lcom/google/android/libraries/smartburst/media/BitmapHandle;Ljava/util/List;J)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/smartburst/media/BitmapHandle;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor$FaceData;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 193
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    invoke-static {p2}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 197
    :try_start_1
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor;->mIndexTimestampMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor;->mBestInputBitmap:Lcom/google/android/libraries/smartburst/media/BitmapHandle;

    if-nez v1, :cond_1

    .line 198
    :cond_0
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor;->mBestInputBitmap:Lcom/google/android/libraries/smartburst/media/BitmapHandle;

    .line 199
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor;->mBestInputBitmap:Lcom/google/android/libraries/smartburst/media/BitmapHandle;

    .line 200
    iput-wide p3, p0, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor;->mBestInputBitmapTimestampNs:J

    .line 201
    if-eqz v1, :cond_1

    .line 202
    invoke-interface {v1}, Lcom/google/android/libraries/smartburst/media/BitmapHandle;->close()V

    .line 205
    :cond_1
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor;->mIndexTimestampMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor;->mIndexTimestampMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    invoke-interface {p1}, Lcom/google/android/libraries/smartburst/media/BitmapHandle;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v1

    .line 212
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 213
    invoke-interface {p1}, Lcom/google/android/libraries/smartburst/media/BitmapHandle;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v8}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 215
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    .line 216
    iget-boolean v1, p0, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor;->mConfiguredForPittPatt:Z

    if-nez v1, :cond_3

    .line 217
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Editor configured for Neven. Cannot input PittPatt faces."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 303
    :catchall_0
    move-exception v1

    :try_start_2
    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor;->mBestInputBitmap:Lcom/google/android/libraries/smartburst/media/BitmapHandle;

    if-eq v2, p1, :cond_2

    .line 304
    invoke-interface {p1}, Lcom/google/android/libraries/smartburst/media/BitmapHandle;->close()V

    :cond_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 193
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1

    .line 221
    :cond_3
    :try_start_3
    new-instance v9, Lcom/google/android/libraries/smartburst/utils/FloatArray;

    invoke-direct {v9}, Lcom/google/android/libraries/smartburst/utils/FloatArray;-><init>()V

    .line 222
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v9, v1}, Lcom/google/android/libraries/smartburst/utils/FloatArray;->add(F)V

    .line 223
    const/4 v1, 0x0

    .line 224
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v7, v1

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor$FaceData;

    move-object v3, v0

    .line 239
    iget-object v1, v3, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor$FaceData;->boundingBox:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    invoke-virtual {v9, v1}, Lcom/google/android/libraries/smartburst/utils/FloatArray;->add(F)V

    .line 240
    iget-object v1, v3, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor$FaceData;->boundingBox:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-virtual {v9, v1}, Lcom/google/android/libraries/smartburst/utils/FloatArray;->add(F)V

    .line 241
    iget-object v1, v3, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor$FaceData;->boundingBox:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {v9, v1}, Lcom/google/android/libraries/smartburst/utils/FloatArray;->add(F)V

    .line 242
    iget-object v1, v3, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor$FaceData;->boundingBox:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {v9, v1}, Lcom/google/android/libraries/smartburst/utils/FloatArray;->add(F)V

    .line 245
    iget-object v1, v3, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor$FaceData;->landmarks:Ljava/util/List;

    .line 246
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v9, v2}, Lcom/google/android/libraries/smartburst/utils/FloatArray;->add(F)V

    .line 247
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 248
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v9, v2}, Lcom/google/android/libraries/smartburst/utils/FloatArray;->add(F)V

    .line 249
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    invoke-virtual {v9, v2}, Lcom/google/android/libraries/smartburst/utils/FloatArray;->add(F)V

    .line 250
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v9, v1}, Lcom/google/android/libraries/smartburst/utils/FloatArray;->add(F)V

    goto :goto_1

    .line 259
    :cond_4
    iget v1, v3, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor$FaceData;->isSmilingScore:F

    invoke-virtual {v9, v1}, Lcom/google/android/libraries/smartburst/utils/FloatArray;->add(F)V

    .line 260
    iget v1, v3, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor$FaceData;->isLeftEyeOpenScore:F

    invoke-virtual {v9, v1}, Lcom/google/android/libraries/smartburst/utils/FloatArray;->add(F)V

    .line 261
    iget v1, v3, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor$FaceData;->isRightEyeOpenScore:F

    invoke-virtual {v9, v1}, Lcom/google/android/libraries/smartburst/utils/FloatArray;->add(F)V

    .line 264
    iget v1, v3, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor$FaceData;->rollDegrees:F

    invoke-virtual {v9, v1}, Lcom/google/android/libraries/smartburst/utils/FloatArray;->add(F)V

    .line 265
    iget v1, v3, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor$FaceData;->yawDegrees:F

    invoke-virtual {v9, v1}, Lcom/google/android/libraries/smartburst/utils/FloatArray;->add(F)V

    .line 268
    iget v1, v3, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor$FaceData;->trackId:I

    int-to-float v1, v1

    invoke-virtual {v9, v1}, Lcom/google/android/libraries/smartburst/utils/FloatArray;->add(F)V

    .line 271
    iget v1, v3, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor$FaceData;->isLeftEyeOpenScore:F

    iget v2, v3, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor$FaceData;->isRightEyeOpenScore:F

    iget v3, v3, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor$FaceData;->isSmilingScore:F

    const/high16 v4, 0x3e800000    # 0.25f

    const/high16 v5, 0x3e800000    # 0.25f

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-static/range {v1 .. v6}, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceUtils;->getJoyScore(FFFFFF)F

    move-result v1

    .line 276
    add-float/2addr v1, v7

    move v7, v1

    .line 277
    goto/16 :goto_0

    .line 278
    :cond_5
    invoke-virtual {v9}, Lcom/google/android/libraries/smartburst/utils/FloatArray;->toArray()[F

    move-result-object v4

    .line 281
    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor;->mContextBuffer:Ljava/nio/ByteBuffer;

    iget v5, p0, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor;->mWidth:I

    iget v6, p0, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor;->mHeight:I

    move-object v1, p0

    move-object v3, v8

    invoke-direct/range {v1 .. v6}, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor;->faceEditingAddPhotoWithFaces(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;[FII)V

    .line 285
    iget v1, p0, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor;->mBestInputJoyScore:F

    cmpl-float v1, v7, v1

    if-lez v1, :cond_6

    .line 286
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor;->mBestInputBitmap:Lcom/google/android/libraries/smartburst/media/BitmapHandle;

    .line 287
    iput v7, p0, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor;->mBestInputJoyScore:F

    .line 288
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor;->mBestInputBitmap:Lcom/google/android/libraries/smartburst/media/BitmapHandle;

    .line 289
    iput-wide p3, p0, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor;->mBestInputBitmapTimestampNs:J

    .line 290
    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor;->mBestInputBitmap:Lcom/google/android/libraries/smartburst/media/BitmapHandle;

    if-eq v1, v2, :cond_6

    .line 291
    invoke-interface {v1}, Lcom/google/android/libraries/smartburst/media/BitmapHandle;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 303
    :cond_6
    :goto_2
    :try_start_4
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor;->mBestInputBitmap:Lcom/google/android/libraries/smartburst/media/BitmapHandle;

    if-eq v1, p1, :cond_7

    .line 304
    invoke-interface {p1}, Lcom/google/android/libraries/smartburst/media/BitmapHandle;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 307
    :cond_7
    monitor-exit p0

    return-void

    .line 295
    :cond_8
    :try_start_5
    iget-boolean v1, p0, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor;->mConfiguredForPittPatt:Z

    if-eqz v1, :cond_9

    .line 296
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Editor configured for PittPatt. Must input PittPatt faces."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 300
    :cond_9
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor;->mContextBuffer:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor;->mWidth:I

    iget v3, p0, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor;->mHeight:I

    invoke-direct {p0, v1, v8, v2, v3}, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor;->faceEditingAddPhoto(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;II)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2
.end method

.method public declared-synchronized createAllSmiles(Lcom/google/android/libraries/smartburst/media/BitmapAllocator;Z)Lcom/google/android/libraries/smartburst/media/BitmapHandle;
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 320
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor;->mConfiguredForAnimation:Z

    if-nez v2, :cond_0

    move v2, v0

    :goto_0
    const-string v3, "Editor is configured for animation. Cannot create all-smiles."

    invoke-static {v2, v3}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(ZLjava/lang/Object;)V

    .line 322
    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor;->mIndexTimestampMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_1

    :goto_1
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(Z)V

    .line 323
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor;->mBestInputBitmap:Lcom/google/android/libraries/smartburst/media/BitmapHandle;

    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    :try_start_1
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor;->mContextBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0, p2}, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor;->faceEditingCreateAllSmiles(Ljava/nio/ByteBuffer;Z)[B

    move-result-object v1

    .line 327
    if-nez v1, :cond_2

    .line 334
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor;->mBestInputBitmap:Lcom/google/android/libraries/smartburst/media/BitmapHandle;

    .line 335
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor;->mBestInputBitmap:Lcom/google/android/libraries/smartburst/media/BitmapHandle;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 355
    :try_start_2
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor;->closeInputBitmap()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 350
    :goto_2
    monitor-exit p0

    return-object v0

    :cond_0
    move v2, v1

    .line 320
    goto :goto_0

    :cond_1
    move v0, v1

    .line 322
    goto :goto_1

    .line 339
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor;->closeInputBitmap()V

    .line 340
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor;->mContextBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0}, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor;->faceEditingReferenceIndex(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 345
    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor;->mIndexTimestampMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 346
    if-eqz v0, :cond_3

    .line 347
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor;->mBestInputBitmapTimestampNs:J

    .line 349
    :cond_3
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 350
    const-string v1, "all-smiles"

    iget v2, p0, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor;->mWidth:I

    iget v3, p0, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor;->mHeight:I

    invoke-static {p1, v1, v0, v2, v3}, Lcom/google/android/libraries/smartburst/media/BitmapAllocators;->createBitmapFromByteBuffer(Lcom/google/android/libraries/smartburst/media/BitmapAllocator;Ljava/lang/String;Ljava/nio/ByteBuffer;II)Lcom/google/android/libraries/smartburst/media/BitmapHandle;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v0

    .line 355
    :try_start_4
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor;->closeInputBitmap()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 320
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 355
    :catchall_1
    move-exception v0

    :try_start_5
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor;->closeInputBitmap()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public declared-synchronized createAnimation(Lcom/google/android/libraries/smartburst/media/BitmapAllocator;ZI)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/smartburst/media/BitmapAllocator;",
            "ZI)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/libraries/smartburst/media/BitmapHandle;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 372
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor;->mConfiguredForAnimation:Z

    const-string v3, "Editor is configured for all-smiles. Cannot create animation."

    invoke-static {v2, v3}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(ZLjava/lang/Object;)V

    .line 374
    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor;->mIndexTimestampMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_1

    move v2, v0

    :goto_0
    invoke-static {v2}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(Z)V

    .line 375
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    if-lez p3, :cond_2

    :goto_1
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(Z)V

    .line 378
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 380
    :try_start_1
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor;->mContextBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0, p2}, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor;->faceEditingCreateAnimation(Ljava/nio/ByteBuffer;Z)[B

    move-result-object v3

    .line 381
    if-nez v3, :cond_3

    .line 387
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor;->mBestInputBitmap:Lcom/google/android/libraries/smartburst/media/BitmapHandle;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 388
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor;->mBestInputBitmap:Lcom/google/android/libraries/smartburst/media/BitmapHandle;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 414
    :cond_0
    :try_start_2
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor;->closeInputBitmap()V

    .line 417
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, p3, :cond_5

    .line 419
    new-instance v1, Lcom/google/android/libraries/smartburst/media/RefCountingBitmapHandle;

    .line 420
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/media/BitmapHandle;

    invoke-direct {v1, v0}, Lcom/google/android/libraries/smartburst/media/RefCountingBitmapHandle;-><init>(Lcom/google/android/libraries/smartburst/media/BitmapHandle;)V

    .line 422
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 423
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, p3, :cond_5

    .line 1043
    new-instance v0, Lcom/google/android/libraries/smartburst/media/RefCountingBitmapHandle;

    invoke-direct {v0, v1}, Lcom/google/android/libraries/smartburst/media/RefCountingBitmapHandle;-><init>(Lcom/google/android/libraries/smartburst/media/RefCountingBitmapHandle;)V

    .line 424
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 372
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    move v2, v1

    .line 374
    goto :goto_0

    :cond_2
    move v0, v1

    .line 376
    goto :goto_1

    .line 391
    :cond_3
    :try_start_3
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor;->closeInputBitmap()V

    .line 392
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor;->mContextBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0}, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor;->faceEditingReferenceIndex(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 397
    iget-object v4, p0, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor;->mIndexTimestampMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 398
    if-eqz v0, :cond_4

    .line 399
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor;->mBestInputBitmapTimestampNs:J

    .line 401
    :cond_4
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor;->mWidth:I

    iget v4, p0, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor;->mHeight:I

    mul-int/2addr v0, v4

    shl-int/lit8 v4, v0, 0x2

    .line 402
    array-length v0, v3

    div-int v5, v0, v4

    .line 403
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    move v0, v1

    .line 404
    :goto_3
    if-ge v0, v5, :cond_0

    .line 405
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 406
    mul-int v1, v0, v4

    invoke-virtual {v6, v3, v1, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 407
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 408
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v7, 0x20

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "face-animation-frame-"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v7, p0, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor;->mWidth:I

    iget v8, p0, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor;->mHeight:I

    invoke-static {p1, v1, v6, v7, v8}, Lcom/google/android/libraries/smartburst/media/BitmapAllocators;->createBitmapFromByteBuffer(Lcom/google/android/libraries/smartburst/media/BitmapAllocator;Ljava/lang/String;Ljava/nio/ByteBuffer;II)Lcom/google/android/libraries/smartburst/media/BitmapHandle;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 404
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 414
    :catchall_1
    move-exception v0

    :try_start_4
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor;->closeInputBitmap()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 427
    :cond_5
    monitor-exit p0

    return-object v2
.end method

.method public declared-synchronized dispose()V
    .locals 1

    .prologue
    .line 171
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor;->mContextBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0}, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor;->faceEditingTearDown(Ljava/nio/ByteBuffer;)V

    .line 172
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor;->closeInputBitmap()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    monitor-exit p0

    return-void

    .line 171
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBestInputBitmapTimestamp()J
    .locals 2

    .prologue
    .line 437
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor;->mBestInputBitmapTimestampNs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
