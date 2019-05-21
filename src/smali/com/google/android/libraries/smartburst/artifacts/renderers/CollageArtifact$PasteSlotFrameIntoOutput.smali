.class final Lcom/google/android/libraries/smartburst/artifacts/renderers/CollageArtifact$PasteSlotFrameIntoOutput;
.super Ljava/lang/Object;
.source "CollageArtifact.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/concurrency/ResultFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/smartburst/artifacts/renderers/CollageArtifact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PasteSlotFrameIntoOutput"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/smartburst/artifacts/renderers/CollageArtifact$PasteSlotFrameIntoOutput$PasteLazyBitmapIntoSlot;,
        Lcom/google/android/libraries/smartburst/artifacts/renderers/CollageArtifact$PasteSlotFrameIntoOutput$GetLazyBitmap;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/libraries/smartburst/concurrency/ResultFunction",
        "<",
        "Lcom/google/android/libraries/smartburst/artifacts/renderers/SlotFrame;",
        "Lcom/google/android/libraries/smartburst/utils/Empty;",
        ">;"
    }
.end annotation


# instance fields
.field private final mBitmapAllocator:Lcom/google/android/libraries/smartburst/media/BitmapAllocator;

.field private final mOutputImage:Lcom/google/android/libraries/smartburst/media/BitmapHandle;

.field private final mSlotScalingFactor:F

.field private final mSummary:Lcom/google/android/libraries/smartburst/media/Summary;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/smartburst/media/Summary",
            "<",
            "Lcom/google/android/libraries/smartburst/media/BitmapLoader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/smartburst/media/Summary;FLcom/google/android/libraries/smartburst/media/BitmapAllocator;Lcom/google/android/libraries/smartburst/media/BitmapHandle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/smartburst/media/Summary",
            "<",
            "Lcom/google/android/libraries/smartburst/media/BitmapLoader;",
            ">;F",
            "Lcom/google/android/libraries/smartburst/media/BitmapAllocator;",
            "Lcom/google/android/libraries/smartburst/media/BitmapHandle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    invoke-static {p3}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    invoke-static {p4}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/artifacts/renderers/CollageArtifact$PasteSlotFrameIntoOutput;->mSummary:Lcom/google/android/libraries/smartburst/media/Summary;

    .line 180
    iput p2, p0, Lcom/google/android/libraries/smartburst/artifacts/renderers/CollageArtifact$PasteSlotFrameIntoOutput;->mSlotScalingFactor:F

    .line 181
    iput-object p3, p0, Lcom/google/android/libraries/smartburst/artifacts/renderers/CollageArtifact$PasteSlotFrameIntoOutput;->mBitmapAllocator:Lcom/google/android/libraries/smartburst/media/BitmapAllocator;

    .line 182
    iput-object p4, p0, Lcom/google/android/libraries/smartburst/artifacts/renderers/CollageArtifact$PasteSlotFrameIntoOutput;->mOutputImage:Lcom/google/android/libraries/smartburst/media/BitmapHandle;

    .line 183
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/libraries/smartburst/artifacts/renderers/CollageArtifact$PasteSlotFrameIntoOutput;)Lcom/google/android/libraries/smartburst/media/Summary;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/artifacts/renderers/CollageArtifact$PasteSlotFrameIntoOutput;->mSummary:Lcom/google/android/libraries/smartburst/media/Summary;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/libraries/smartburst/artifacts/renderers/CollageArtifact$PasteSlotFrameIntoOutput;)F
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lcom/google/android/libraries/smartburst/artifacts/renderers/CollageArtifact$PasteSlotFrameIntoOutput;->mSlotScalingFactor:F

    return v0
.end method

.method static synthetic access$300(Lcom/google/android/libraries/smartburst/artifacts/renderers/CollageArtifact$PasteSlotFrameIntoOutput;)Lcom/google/android/libraries/smartburst/media/BitmapAllocator;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/artifacts/renderers/CollageArtifact$PasteSlotFrameIntoOutput;->mBitmapAllocator:Lcom/google/android/libraries/smartburst/media/BitmapAllocator;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/libraries/smartburst/artifacts/renderers/CollageArtifact$PasteSlotFrameIntoOutput;)Lcom/google/android/libraries/smartburst/media/BitmapHandle;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/artifacts/renderers/CollageArtifact$PasteSlotFrameIntoOutput;->mOutputImage:Lcom/google/android/libraries/smartburst/media/BitmapHandle;

    return-object v0
.end method

.method static synthetic access$500(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 0

    .prologue
    .line 165
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/libraries/smartburst/artifacts/renderers/CollageArtifact$PasteSlotFrameIntoOutput;->pasteImageIntoImage(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    return-void
.end method

.method private static pasteImageIntoImage(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 7

    .prologue
    .line 190
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p2, Landroid/graphics/RectF;->top:F

    .line 191
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p2, Landroid/graphics/RectF;->right:F

    .line 192
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iget v4, p2, Landroid/graphics/RectF;->bottom:F

    .line 193
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 194
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p3, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p3, Landroid/graphics/RectF;->top:F

    .line 195
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iget v4, p3, Landroid/graphics/RectF;->right:F

    .line 196
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iget v5, p3, Landroid/graphics/RectF;->bottom:F

    .line 197
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 200
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 201
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 202
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 203
    invoke-virtual {v2, p0, v0, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 204
    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;Ljava/util/concurrent/Executor;)Lcom/google/android/libraries/smartburst/concurrency/Result;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 165
    check-cast p1, Lcom/google/android/libraries/smartburst/artifacts/renderers/SlotFrame;

    .line 1208
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1210
    iget-wide v0, p1, Lcom/google/android/libraries/smartburst/artifacts/renderers/SlotFrame;->timestamp:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 2142
    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/concurrency/Results;->create(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/android/libraries/smartburst/concurrency/Result;

    move-result-object v0

    .line 1210
    new-instance v1, Lcom/google/android/libraries/smartburst/artifacts/renderers/CollageArtifact$PasteSlotFrameIntoOutput$GetLazyBitmap;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/libraries/smartburst/artifacts/renderers/CollageArtifact$PasteSlotFrameIntoOutput$GetLazyBitmap;-><init>(Lcom/google/android/libraries/smartburst/artifacts/renderers/CollageArtifact$PasteSlotFrameIntoOutput;B)V

    .line 1211
    invoke-virtual {v0, p2, v1}, Lcom/google/android/libraries/smartburst/concurrency/Result;->then(Ljava/util/concurrent/Executor;Lcom/google/android/libraries/smartburst/concurrency/ResultFunction;)Lcom/google/android/libraries/smartburst/concurrency/Result;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/smartburst/artifacts/renderers/CollageArtifact$PasteSlotFrameIntoOutput$PasteLazyBitmapIntoSlot;

    invoke-direct {v1, p0, p1}, Lcom/google/android/libraries/smartburst/artifacts/renderers/CollageArtifact$PasteSlotFrameIntoOutput$PasteLazyBitmapIntoSlot;-><init>(Lcom/google/android/libraries/smartburst/artifacts/renderers/CollageArtifact$PasteSlotFrameIntoOutput;Lcom/google/android/libraries/smartburst/artifacts/renderers/SlotFrame;)V

    .line 1212
    invoke-virtual {v0, p2, v1}, Lcom/google/android/libraries/smartburst/concurrency/Result;->then(Ljava/util/concurrent/Executor;Lcom/google/android/libraries/smartburst/utils/Function;)Lcom/google/android/libraries/smartburst/concurrency/Result;

    move-result-object v0

    .line 165
    return-object v0
.end method
