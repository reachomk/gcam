.class final Lcom/android/camera/burst/editor/grid/GridMarginDecoration;
.super Lcom/android/camera/activity/config/ModeStartupModules;
.source "GridMarginDecoration.java"


# instance fields
.field private final edgeMargin:I

.field private final itemMargin:I

.field private final lookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

.field private final spanCount:I


# direct methods
.method public constructor <init>(IILandroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 28
    invoke-direct {p0}, Lcom/android/camera/activity/config/ModeStartupModules;-><init>()V

    .line 29
    if-lez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(Z)V

    .line 30
    iput p1, p0, Lcom/android/camera/burst/editor/grid/GridMarginDecoration;->itemMargin:I

    .line 31
    iput p2, p0, Lcom/android/camera/burst/editor/grid/GridMarginDecoration;->spanCount:I

    .line 32
    iput-object p3, p0, Lcom/android/camera/burst/editor/grid/GridMarginDecoration;->lookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    .line 33
    int-to-float v0, p2

    div-float v0, v1, v0

    sub-float v0, v1, v0

    int-to-float v1, p1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/android/camera/burst/editor/grid/GridMarginDecoration;->edgeMargin:I

    .line 34
    return-void

    .line 29
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final getItemOffsets$51662RJ4E9NMIP1FCTP62S38D5HN6BQICLHN8EQCC5N68SJFD5I2UTJ9CLRIULJ9CLRJMJ31DPI74RR9CGNN6TBGE1NN4T1FEORIUTR9CHJMAT1FA9IM6UB3DHIN4LJ9CLRJMJ31DPI74RR9CGNN6TBGE1NN4T1FEORIUTR9CHJMAT1FA9IM6UB3DHIN4LJ9CLRI8KRKC5Q6AEP9AO______(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 40
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildPosition(Landroid/view/View;)I

    move-result v0

    .line 41
    iget v1, p0, Lcom/android/camera/burst/editor/grid/GridMarginDecoration;->itemMargin:I

    invoke-virtual {p1, v2, v1, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 43
    iget-object v1, p0, Lcom/android/camera/burst/editor/grid/GridMarginDecoration;->lookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v1

    iget v2, p0, Lcom/android/camera/burst/editor/grid/GridMarginDecoration;->spanCount:I

    if-eq v1, v2, :cond_0

    .line 44
    iget-object v1, p0, Lcom/android/camera/burst/editor/grid/GridMarginDecoration;->lookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    iget v2, p0, Lcom/android/camera/burst/editor/grid/GridMarginDecoration;->spanCount:I

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanIndex(II)I

    move-result v0

    int-to-float v0, v0

    .line 45
    iget v1, p0, Lcom/android/camera/burst/editor/grid/GridMarginDecoration;->spanCount:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/android/camera/burst/editor/grid/GridMarginDecoration;->itemMargin:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 46
    iget v1, p0, Lcom/android/camera/burst/editor/grid/GridMarginDecoration;->edgeMargin:I

    sub-int/2addr v1, v0

    .line 48
    invoke-static {p3}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 49
    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 50
    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 53
    iput v1, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0
.end method
