.class Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$ScreenDimensions;
.super Ljava/lang/Object;
.source "MemorySizeCalculator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "ScreenDimensions"
.end annotation


# instance fields
.field private final displayMetrics:Landroid/util/DisplayMetrics;


# direct methods
.method public constructor <init>(Landroid/util/DisplayMetrics;)V
    .locals 0

    .prologue
    .line 2242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2243
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$ScreenDimensions;->displayMetrics:Landroid/util/DisplayMetrics;

    .line 2244
    return-void
.end method


# virtual methods
.method public getHeightPixels()I
    .locals 1

    .prologue
    .line 1253
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$ScreenDimensions;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method

.method public getWidthPixels()I
    .locals 1

    .prologue
    .line 1248
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$ScreenDimensions;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method
