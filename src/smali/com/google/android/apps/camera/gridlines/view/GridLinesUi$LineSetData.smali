.class abstract Lcom/google/android/apps/camera/gridlines/view/GridLinesUi$LineSetData;
.super Ljava/lang/Object;
.source "GridLinesUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/camera/gridlines/view/GridLinesUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "LineSetData"
.end annotation


# instance fields
.field public bottomPos:I

.field public centerHorizontalPos:I

.field public centerVerticalPos:I

.field public final isUninitialized:Z

.field public leftPos:I

.field public rightPos:I

.field public final shouldDrawCenterLines:Z

.field public final shouldHideLinesAfterAnimation:Z

.field public topPos:I


# direct methods
.method public constructor <init>(ZZZ)V
    .locals 0

    .prologue
    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 325
    iput-boolean p1, p0, Lcom/google/android/apps/camera/gridlines/view/GridLinesUi$LineSetData;->isUninitialized:Z

    .line 326
    iput-boolean p2, p0, Lcom/google/android/apps/camera/gridlines/view/GridLinesUi$LineSetData;->shouldDrawCenterLines:Z

    .line 327
    iput-boolean p3, p0, Lcom/google/android/apps/camera/gridlines/view/GridLinesUi$LineSetData;->shouldHideLinesAfterAnimation:Z

    .line 328
    return-void
.end method


# virtual methods
.method public abstract setBounds(Landroid/graphics/RectF;)V
.end method
