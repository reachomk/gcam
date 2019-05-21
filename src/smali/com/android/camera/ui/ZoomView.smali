.class public final Lcom/android/camera/ui/ZoomView;
.super Landroid/widget/ImageView;
.source "ZoomView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private orientation:I

.field private partialDecodingTask:Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;

.field private uri:Landroid/net/Uri;

.field private viewportHeight:I

.field private viewportWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-string v0, "ZoomView"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/ZoomView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 162
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 27
    iput v0, p0, Lcom/android/camera/ui/ZoomView;->viewportWidth:I

    .line 28
    iput v0, p0, Lcom/android/camera/ui/ZoomView;->viewportHeight:I

    .line 163
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ZoomView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 164
    new-instance v0, Lcom/android/camera/ui/ZoomView$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/ZoomView$1;-><init>(Lcom/android/camera/ui/ZoomView;)V

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ZoomView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 185
    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/ui/ZoomView;)Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/camera/ui/ZoomView;->openInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/android/camera/ui/ZoomView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/ui/ZoomView;)I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/android/camera/ui/ZoomView;->orientation:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/camera/ui/ZoomView;)I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/android/camera/ui/ZoomView;->viewportWidth:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/camera/ui/ZoomView;I)I
    .locals 0

    .prologue
    .line 23
    iput p1, p0, Lcom/android/camera/ui/ZoomView;->viewportWidth:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/camera/ui/ZoomView;)I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/android/camera/ui/ZoomView;->viewportHeight:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/camera/ui/ZoomView;I)I
    .locals 0

    .prologue
    .line 23
    iput p1, p0, Lcom/android/camera/ui/ZoomView;->viewportHeight:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/camera/ui/ZoomView;II)I
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/ZoomView;->getSampleFactor(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$702(Lcom/android/camera/ui/ZoomView;Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;)Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/ZoomView;->partialDecodingTask:Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/ui/ZoomView;Z)V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/ui/ZoomView;->showPartiallyDecodedImage(Z)V

    return-void
.end method

.method public static adjustToFitInBounds(Landroid/graphics/RectF;II)Landroid/graphics/RectF;
    .locals 7

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/4 v1, 0x0

    .line 228
    .line 229
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, p0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 230
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v0

    int-to-float v2, p1

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    .line 231
    div-int/lit8 v0, p1, 0x2

    int-to-float v0, v0

    iget v2, v3, Landroid/graphics/RectF;->left:F

    iget v4, v3, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, v4

    div-float/2addr v2, v6

    sub-float/2addr v0, v2

    .line 240
    :goto_0
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v2

    int-to-float v4, p2

    cmpg-float v2, v2, v4

    if-gez v2, :cond_4

    .line 241
    div-int/lit8 v2, p2, 0x2

    int-to-float v2, v2

    iget v4, v3, Landroid/graphics/RectF;->top:F

    iget v5, v3, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v4, v5

    div-float/2addr v4, v6

    sub-float/2addr v2, v4

    .line 250
    :goto_1
    cmpl-float v4, v0, v1

    if-nez v4, :cond_0

    cmpl-float v1, v2, v1

    if-eqz v1, :cond_1

    .line 251
    :cond_0
    invoke-virtual {v3, v0, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 253
    :cond_1
    return-object v3

    .line 233
    :cond_2
    iget v0, v3, Landroid/graphics/RectF;->left:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 234
    iget v0, v3, Landroid/graphics/RectF;->left:F

    neg-float v0, v0

    goto :goto_0

    .line 235
    :cond_3
    iget v0, v3, Landroid/graphics/RectF;->right:F

    int-to-float v2, p1

    cmpg-float v0, v0, v2

    if-gez v0, :cond_7

    .line 236
    int-to-float v0, p1

    iget v2, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v2

    goto :goto_0

    .line 243
    :cond_4
    iget v2, v3, Landroid/graphics/RectF;->top:F

    cmpl-float v2, v2, v1

    if-lez v2, :cond_5

    .line 244
    iget v2, v3, Landroid/graphics/RectF;->top:F

    neg-float v2, v2

    goto :goto_1

    .line 245
    :cond_5
    iget v2, v3, Landroid/graphics/RectF;->bottom:F

    int-to-float v4, p2

    cmpg-float v2, v2, v4

    if-gez v2, :cond_6

    .line 246
    int-to-float v2, p2

    iget v4, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v4

    goto :goto_1

    :cond_6
    move v2, v1

    goto :goto_1

    :cond_7
    move v0, v1

    goto :goto_0
.end method

.method private final getSampleFactor(II)I
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 283
    iget v0, p0, Lcom/android/camera/ui/ZoomView;->viewportWidth:I

    int-to-float v0, v0

    int-to-float v2, p1

    div-float/2addr v0, v2

    .line 284
    iget v2, p0, Lcom/android/camera/ui/ZoomView;->viewportHeight:I

    int-to-float v2, v2

    int-to-float v3, p2

    div-float/2addr v2, v3

    .line 286
    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 289
    const/high16 v2, 0x3f800000    # 1.0f

    div-float v0, v2, v0

    float-to-int v0, v0

    .line 290
    if-gt v0, v1, :cond_1

    move v0, v1

    .line 299
    :cond_0
    :goto_0
    return v0

    .line 293
    :cond_1
    const/4 v2, 0x0

    :goto_1
    const/16 v3, 0x20

    if-ge v2, v3, :cond_0

    .line 294
    add-int/lit8 v3, v2, 0x1

    shl-int v3, v1, v3

    if-le v3, v0, :cond_2

    .line 295
    shl-int v0, v1, v2

    .line 296
    goto :goto_0

    .line 293
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private final openInputStream()Ljava/io/InputStream;
    .locals 5

    .prologue
    .line 265
    const/4 v0, 0x0

    .line 267
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/ui/ZoomView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/ZoomView;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 271
    :goto_0
    return-object v0

    .line 269
    :catch_0
    move-exception v1

    sget-object v1, Lcom/android/camera/ui/ZoomView;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/camera/ui/ZoomView;->uri:Landroid/net/Uri;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x13

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "File not found at: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private final showPartiallyDecodedImage(Z)V
    .locals 1

    .prologue
    .line 208
    if-eqz p1, :cond_0

    .line 209
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ZoomView;->setVisibility(I)V

    .line 213
    :goto_0
    return-void

    .line 211
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ZoomView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public final cancelPartialDecodingTask()V
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/camera/ui/ZoomView;->partialDecodingTask:Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/ZoomView;->partialDecodingTask:Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;

    invoke-virtual {v0}, Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/android/camera/ui/ZoomView;->partialDecodingTask:Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;->cancel(Z)Z

    .line 218
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ZoomView;->setVisibility(I)V

    .line 220
    :cond_0
    return-void
.end method

.method public final loadBitmap(Landroid/net/Uri;ILandroid/graphics/RectF;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 199
    iget-object v0, p0, Lcom/android/camera/ui/ZoomView;->uri:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    iput-object p1, p0, Lcom/android/camera/ui/ZoomView;->uri:Landroid/net/Uri;

    .line 202
    iput p2, p0, Lcom/android/camera/ui/ZoomView;->orientation:I

    .line 1258
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/ZoomView;->cancelPartialDecodingTask()V

    .line 1259
    new-instance v0, Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;-><init>(Lcom/android/camera/ui/ZoomView;B)V

    iput-object v0, p0, Lcom/android/camera/ui/ZoomView;->partialDecodingTask:Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;

    .line 1260
    iget-object v0, p0, Lcom/android/camera/ui/ZoomView;->partialDecodingTask:Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/graphics/RectF;

    aput-object p3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ZoomView$DecodePartialBitmap;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 205
    return-void
.end method
