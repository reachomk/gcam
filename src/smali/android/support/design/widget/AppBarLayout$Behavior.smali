.class public Landroid/support/design/widget/AppBarLayout$Behavior;
.super Landroid/support/design/widget/HeaderBehavior;
.source "AppBarLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/AppBarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Behavior"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/design/widget/HeaderBehavior",
        "<",
        "Landroid/support/design/widget/AppBarLayout;",
        ">;"
    }
.end annotation


# instance fields
.field private mLastNestedScrollingChildRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mOffsetAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

.field private mOffsetDelta:I

.field private mOffsetToChildIndexOnLayout:I

.field private mOffsetToChildIndexOnLayoutIsMinHeight:Z

.field private mOffsetToChildIndexOnLayoutPerc:F

.field private mSkipNestedPreScroll:Z

.field private mWasNestedFlung:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 792
    invoke-direct {p0}, Landroid/support/design/widget/HeaderBehavior;-><init>()V

    .line 785
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayout:I

    .line 792
    return-void
.end method

.method static synthetic access$000(Landroid/support/design/widget/AppBarLayout$Behavior;)I
    .locals 1

    .prologue
    .line 758
    iget v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetDelta:I

    return v0
.end method

.method private final animateOffsetTo(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;IF)V
    .locals 6

    .prologue
    .line 918
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$Behavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v0

    sub-int/2addr v0, p3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 921
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 922
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1

    .line 923
    const/high16 v2, 0x447a0000    # 1000.0f

    int-to-float v0, v0

    div-float/2addr v0, v1

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    .line 2934
    :goto_0
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$Behavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v1

    .line 2935
    if-ne v1, p3, :cond_2

    .line 2936
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-virtual {v0}, Landroid/support/design/widget/ValueAnimatorCompat;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2937
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-virtual {v0}, Landroid/support/design/widget/ValueAnimatorCompat;->cancel()V

    .line 2939
    :cond_0
    :goto_1
    return-void

    .line 925
    :cond_1
    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 926
    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    const/high16 v1, 0x43160000    # 150.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0

    .line 2942
    :cond_2
    iget-object v2, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    if-nez v2, :cond_3

    .line 3035
    sget-object v2, Landroid/support/design/widget/ViewUtils;->DEFAULT_ANIMATOR_CREATOR:Landroid/support/design/widget/ValueAnimatorCompat$Creator;

    invoke-virtual {v2}, Landroid/support/design/widget/ValueAnimatorCompat$Creator;->createAnimator()Landroid/support/design/widget/ValueAnimatorCompat;

    move-result-object v2

    .line 2943
    iput-object v2, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    .line 2944
    iget-object v2, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    sget-object v3, Landroid/support/design/widget/AnimationUtils;->DECELERATE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/support/design/widget/ValueAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2945
    iget-object v2, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    new-instance v3, Landroid/support/design/widget/MathUtils;

    invoke-direct {v3, p0, p1, p2}, Landroid/support/design/widget/MathUtils;-><init>(Landroid/support/design/widget/AppBarLayout$Behavior;Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)V

    invoke-virtual {v2, v3}, Landroid/support/design/widget/ValueAnimatorCompat;->addUpdateListener(Landroid/support/design/widget/ValueAnimatorCompat$AnimatorUpdateListener;)V

    .line 2956
    :goto_2
    iget-object v2, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    const/16 v3, 0x258

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-long v4, v0

    invoke-virtual {v2, v4, v5}, Landroid/support/design/widget/ValueAnimatorCompat;->setDuration(J)V

    .line 2957
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-virtual {v0, v1, p3}, Landroid/support/design/widget/ValueAnimatorCompat;->setIntValues(II)V

    .line 2958
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-virtual {v0}, Landroid/support/design/widget/ValueAnimatorCompat;->start()V

    goto :goto_1

    .line 2953
    :cond_3
    iget-object v2, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-virtual {v2}, Landroid/support/design/widget/ValueAnimatorCompat;->cancel()V

    goto :goto_2
.end method

.method private static checkFlag(II)Z
    .locals 1

    .prologue
    .line 1014
    and-int v0, p0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final snapToChildIfNeeded(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 972
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$Behavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v4

    .line 3962
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v1

    move v0, v3

    :goto_0
    if-ge v0, v1, :cond_4

    .line 3963
    invoke-virtual {p2, v0}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3964
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    neg-int v6, v4

    if-gt v5, v6, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    neg-int v5, v4

    if-lt v2, v5, :cond_3

    move v1, v0

    .line 974
    :goto_1
    if-ltz v1, :cond_2

    .line 975
    invoke-virtual {p2, v1}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 976
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    .line 4718
    iget v6, v0, Landroid/support/design/widget/AppBarLayout$LayoutParams;->mScrollFlags:I

    .line 979
    and-int/lit8 v0, v6, 0x11

    const/16 v2, 0x11

    if-ne v0, v2, :cond_2

    .line 981
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v0

    neg-int v2, v0

    .line 982
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v0

    neg-int v0, v0

    .line 984
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne v1, v7, :cond_0

    .line 989
    :cond_0
    const/4 v1, 0x2

    invoke-static {v6, v1}, Landroid/support/design/widget/AppBarLayout$Behavior;->checkFlag(II)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 991
    invoke-static {v5}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    move v1, v2

    .line 1004
    :cond_1
    :goto_2
    add-int v2, v0, v1

    div-int/lit8 v2, v2, 0x2

    if-ge v4, v2, :cond_6

    .line 1008
    :goto_3
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v1

    neg-int v1, v1

    invoke-static {v0, v1, v3}, Landroid/support/design/widget/MathUtils;->constrain(III)I

    move-result v0

    const/4 v1, 0x0

    .line 1007
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/support/design/widget/AppBarLayout$Behavior;->animateOffsetTo(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;IF)V

    .line 1011
    :cond_2
    return-void

    .line 3962
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3968
    :cond_4
    const/4 v0, -0x1

    move v1, v0

    goto :goto_1

    .line 992
    :cond_5
    const/4 v1, 0x5

    invoke-static {v6, v1}, Landroid/support/design/widget/AppBarLayout$Behavior;->checkFlag(II)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 996
    invoke-static {v5}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v1

    add-int/2addr v1, v0

    .line 997
    if-lt v4, v1, :cond_1

    move v0, v1

    move v1, v2

    .line 1000
    goto :goto_2

    :cond_6
    move v0, v1

    .line 1004
    goto :goto_3

    :cond_7
    move v1, v2

    goto :goto_2
.end method


# virtual methods
.method final synthetic canDragView(Landroid/view/View;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 758
    check-cast p1, Landroid/support/design/widget/AppBarLayout;

    .line 8094
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mLastNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 8096
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mLastNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 8097
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, -0x1

    .line 8098
    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final synthetic getMaxDragOffset(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 758
    check-cast p1, Landroid/support/design/widget/AppBarLayout;

    .line 7113
    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getDownNestedScrollRange()I

    move-result v0

    neg-int v0, v0

    .line 758
    return v0
.end method

.method final synthetic getScrollRangeForDragFling(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 758
    check-cast p1, Landroid/support/design/widget/AppBarLayout;

    .line 6118
    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    .line 758
    return v0
.end method

.method public final bridge synthetic getTopAndBottomOffset()I
    .locals 1

    .prologue
    .line 758
    invoke-super {p0}, Landroid/support/design/widget/HeaderBehavior;->getTopAndBottomOffset()I

    move-result v0

    return v0
.end method

.method final getTopBottomOffsetForScrollingSibling()I
    .locals 2

    .prologue
    .line 1282
    .line 5758
    invoke-super {p0}, Landroid/support/design/widget/HeaderBehavior;->getTopAndBottomOffset()I

    move-result v0

    .line 1282
    iget v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetDelta:I

    add-int/2addr v0, v1

    return v0
.end method

.method final synthetic onFlingFinished(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 758
    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    .line 8108
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/AppBarLayout$Behavior;->snapToChildIfNeeded(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)V

    .line 758
    return-void
.end method

.method public final synthetic onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 758
    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    .line 17041
    invoke-super {p0, p1, p2, p3}, Landroid/support/design/widget/HeaderBehavior;->onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z

    move-result v2

    .line 17043
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getPendingAction()I

    move-result v3

    .line 17044
    if-eqz v3, :cond_5

    .line 17045
    and-int/lit8 v0, v3, 0x4

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 17046
    :goto_0
    and-int/lit8 v4, v3, 0x2

    if-eqz v4, :cond_3

    .line 17047
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getUpNestedPreScrollRange()I

    move-result v3

    neg-int v3, v3

    .line 17048
    if-eqz v0, :cond_2

    .line 17049
    invoke-direct {p0, p1, p2, v3, v5}, Landroid/support/design/widget/AppBarLayout$Behavior;->animateOffsetTo(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;IF)V

    .line 17072
    :cond_0
    :goto_1
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->resetPendingAction()V

    .line 17073
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayout:I

    .line 18758
    invoke-super {p0}, Landroid/support/design/widget/HeaderBehavior;->getTopAndBottomOffset()I

    move-result v0

    .line 17078
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v3

    neg-int v3, v3

    invoke-static {v0, v3, v1}, Landroid/support/design/widget/MathUtils;->constrain(III)I

    move-result v0

    .line 19758
    invoke-super {p0, v0}, Landroid/support/design/widget/HeaderBehavior;->setTopAndBottomOffset(I)Z

    .line 20758
    invoke-super {p0}, Landroid/support/design/widget/HeaderBehavior;->getTopAndBottomOffset()I

    .line 758
    return v2

    :cond_1
    move v0, v1

    .line 17045
    goto :goto_0

    .line 17051
    :cond_2
    invoke-virtual {p0, p1, p2, v3}, Landroid/support/design/widget/AppBarLayout$Behavior;->setHeaderTopBottomOffset(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)I

    goto :goto_1

    .line 17053
    :cond_3
    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 17054
    if-eqz v0, :cond_4

    .line 17055
    invoke-direct {p0, p1, p2, v1, v5}, Landroid/support/design/widget/AppBarLayout$Behavior;->animateOffsetTo(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;IF)V

    goto :goto_1

    .line 17057
    :cond_4
    invoke-virtual {p0, p1, p2, v1}, Landroid/support/design/widget/AppBarLayout$Behavior;->setHeaderTopBottomOffset(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)I

    goto :goto_1

    .line 17060
    :cond_5
    iget v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayout:I

    if-ltz v0, :cond_0

    .line 17061
    iget v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayout:I

    invoke-virtual {p2, v0}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 17062
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    neg-int v3, v3

    .line 17063
    iget-boolean v4, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayoutIsMinHeight:Z

    if-eqz v4, :cond_6

    .line 17064
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v3

    .line 17758
    :goto_2
    invoke-super {p0, v0}, Landroid/support/design/widget/HeaderBehavior;->setTopAndBottomOffset(I)Z

    goto :goto_1

    .line 17066
    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v4, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayoutPerc:F

    mul-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/2addr v0, v3

    goto :goto_2
.end method

.method public final synthetic onMeasureChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;IIII)Z
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 758
    move-object v1, p2

    check-cast v1, Landroid/support/design/widget/AppBarLayout;

    .line 27022
    invoke-virtual {v1}, Landroid/support/design/widget/AppBarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 27023
    iget v0, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->height:I

    const/4 v2, -0x2

    if-ne v0, v2, :cond_0

    .line 27029
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    move-object v0, p1

    move v2, p3

    move v3, p4

    move v5, p6

    .line 27028
    invoke-virtual/range {v0 .. v5}, Landroid/support/design/widget/CoordinatorLayout;->onMeasureChild(Landroid/view/View;IIII)V

    .line 27030
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move-object v2, p0

    move-object v3, p1

    move-object v4, v1

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    .line 27034
    invoke-super/range {v2 .. v8}, Landroid/support/v4/media/session/MediaControllerCompat;->onMeasureChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;IIII)Z

    move-result v0

    goto :goto_0
.end method

.method public final synthetic onNestedFling(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FFZ)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 758
    move-object v2, p2

    check-cast v2, Landroid/support/design/widget/AppBarLayout;

    .line 24874
    if-nez p6, :cond_1

    .line 24876
    invoke-virtual {v2}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    neg-int v3, v0

    neg-float v5, p5

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/support/design/widget/AppBarLayout$Behavior;->fling(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;IIF)Z

    move-result v4

    .line 24903
    :cond_0
    :goto_0
    iput-boolean v4, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mWasNestedFlung:Z

    .line 758
    return v4

    .line 24881
    :cond_1
    const/4 v1, 0x0

    cmpg-float v1, p5, v1

    if-gez v1, :cond_2

    .line 24883
    invoke-virtual {v2}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v1

    neg-int v1, v1

    .line 24884
    invoke-virtual {v2}, Landroid/support/design/widget/AppBarLayout;->getDownNestedPreScrollRange()I

    move-result v3

    add-int/2addr v1, v3

    .line 24885
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$Behavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v3

    if-ge v3, v1, :cond_0

    .line 24888
    invoke-direct {p0, p1, v2, v1, p5}, Landroid/support/design/widget/AppBarLayout$Behavior;->animateOffsetTo(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;IF)V

    move v4, v0

    .line 24889
    goto :goto_0

    .line 24893
    :cond_2
    invoke-virtual {v2}, Landroid/support/design/widget/AppBarLayout;->getUpNestedPreScrollRange()I

    move-result v1

    neg-int v1, v1

    .line 24894
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$Behavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v3

    if-le v3, v1, :cond_0

    .line 24897
    invoke-direct {p0, p1, v2, v1, p5}, Landroid/support/design/widget/AppBarLayout$Behavior;->animateOffsetTo(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;IF)V

    move v4, v0

    .line 24898
    goto :goto_0
.end method

.method public final synthetic onNestedPreScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[I)V
    .locals 7

    .prologue
    .line 758
    move-object v2, p2

    check-cast v2, Landroid/support/design/widget/AppBarLayout;

    .line 25821
    if-eqz p5, :cond_0

    iget-boolean v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mSkipNestedPreScroll:Z

    if-nez v0, :cond_0

    .line 25823
    if-gez p5, :cond_1

    .line 25825
    invoke-virtual {v2}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    neg-int v4, v0

    .line 25826
    invoke-virtual {v2}, Landroid/support/design/widget/AppBarLayout;->getDownNestedPreScrollRange()I

    move-result v0

    add-int v5, v4, v0

    .line 25832
    :goto_0
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/design/widget/AppBarLayout$Behavior;->scroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)I

    move-result v0

    aput v0, p6, v6

    .line 758
    :cond_0
    return-void

    .line 25829
    :cond_1
    invoke-virtual {v2}, Landroid/support/design/widget/AppBarLayout;->getUpNestedPreScrollRange()I

    move-result v0

    neg-int v4, v0

    .line 25830
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public final synthetic onNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIII)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 758
    move-object v2, p2

    check-cast v2, Landroid/support/design/widget/AppBarLayout;

    .line 25840
    if-gez p7, :cond_0

    .line 25844
    invoke-virtual {v2}, Landroid/support/design/widget/AppBarLayout;->getDownNestedScrollRange()I

    move-result v0

    neg-int v4, v0

    move-object v0, p0

    move-object v1, p1

    move v3, p7

    .line 25843
    invoke-virtual/range {v0 .. v5}, Landroid/support/design/widget/AppBarLayout$Behavior;->scroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)I

    .line 25846
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mSkipNestedPreScroll:Z

    :goto_0
    return-void

    .line 25849
    :cond_0
    iput-boolean v5, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mSkipNestedPreScroll:Z

    goto :goto_0
.end method

.method public final synthetic onRestoreInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 758
    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    .line 24312
    instance-of v0, p3, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;

    if-eqz v0, :cond_0

    .line 24313
    check-cast p3, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;

    .line 24314
    invoke-virtual {p3}, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, p1, p2, v0}, Landroid/support/v4/media/session/MediaControllerCompat;->onRestoreInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    .line 24315
    iget v0, p3, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;->firstVisibleChildIndex:I

    iput v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayout:I

    .line 24316
    iget v0, p3, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;->firstVisibleChildPercentageShown:F

    iput v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayoutPerc:F

    .line 24317
    iget-boolean v0, p3, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;->firstVisibleChildAtMinimumHeight:Z

    iput-boolean v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayoutIsMinHeight:Z

    .line 24318
    :goto_0
    return-void

    .line 24319
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/media/session/MediaControllerCompat;->onRestoreInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    .line 24320
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayout:I

    goto :goto_0
.end method

.method public final synthetic onSaveInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 758
    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    .line 22287
    invoke-super {p0, p1, p2}, Landroid/support/v4/media/session/MediaControllerCompat;->onSaveInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;

    move-result-object v2

    .line 22758
    invoke-super {p0}, Landroid/support/design/widget/HeaderBehavior;->getTopAndBottomOffset()I

    move-result v4

    .line 22291
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v5

    move v3, v0

    :goto_0
    if-ge v3, v5, :cond_2

    .line 22292
    invoke-virtual {p2, v3}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 22293
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v1

    add-int v7, v1, v4

    .line 22295
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v1

    add-int/2addr v1, v4

    if-gtz v1, :cond_1

    if-ltz v7, :cond_1

    .line 22296
    new-instance v1, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;

    invoke-direct {v1, v2}, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 22297
    iput v3, v1, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;->firstVisibleChildIndex:I

    .line 22299
    invoke-static {v6}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v2

    if-ne v7, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, v1, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;->firstVisibleChildAtMinimumHeight:Z

    .line 22300
    int-to-float v0, v7

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    iput v0, v1, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;->firstVisibleChildPercentageShown:F

    move-object v0, v1

    .line 22301
    :goto_1
    return-object v0

    .line 22291
    :cond_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    :cond_2
    move-object v0, v2

    .line 758
    goto :goto_1
.end method

.method public final synthetic onStartNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)Z
    .locals 2

    .prologue
    .line 758
    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    .line 26803
    and-int/lit8 v0, p5, 0x2

    if-eqz v0, :cond_1

    .line 26804
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->hasScrollableChildren()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 26805
    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getHeight()I

    move-result v0

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getHeight()I

    move-result v1

    if-gt v0, v1, :cond_1

    const/4 v0, 0x1

    .line 26807
    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    if-eqz v1, :cond_0

    .line 26809
    iget-object v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-virtual {v1}, Landroid/support/design/widget/ValueAnimatorCompat;->cancel()V

    .line 26813
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mLastNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    .line 758
    return v0

    .line 26805
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic onStopNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 758
    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    .line 25856
    iget-boolean v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mWasNestedFlung:Z

    if-nez v0, :cond_0

    .line 25858
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/AppBarLayout$Behavior;->snapToChildIfNeeded(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)V

    .line 25862
    :cond_0
    iput-boolean v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mSkipNestedPreScroll:Z

    .line 25863
    iput-boolean v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mWasNestedFlung:Z

    .line 25865
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mLastNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    .line 758
    return-void
.end method

.method final synthetic setHeaderTopBottomOffset(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)I
    .locals 9

    .prologue
    .line 758
    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    .line 8124
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$Behavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v4

    .line 8125
    const/4 v0, 0x0

    .line 8127
    if-eqz p4, :cond_12

    if-lt v4, p4, :cond_12

    if-gt v4, p5, :cond_12

    .line 8130
    invoke-static {p3, p4, p5}, Landroid/support/design/widget/MathUtils;->constrain(III)I

    move-result v2

    .line 8131
    if-eq v4, v2, :cond_5

    .line 8132
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->hasChildWithInterpolator()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 8172
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 8174
    const/4 v0, 0x0

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v5

    move v1, v0

    :goto_0
    if-ge v1, v5, :cond_7

    .line 8175
    invoke-virtual {p2, v1}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 8176
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    .line 8742
    iget-object v7, v0, Landroid/support/design/widget/AppBarLayout$LayoutParams;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    .line 8179
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v8

    if-lt v3, v8, :cond_6

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v8

    if-gt v3, v8, :cond_6

    .line 8180
    if-eqz v7, :cond_7

    .line 8181
    const/4 v1, 0x0

    .line 9718
    iget v5, v0, Landroid/support/design/widget/AppBarLayout$LayoutParams;->mScrollFlags:I

    .line 8183
    and-int/lit8 v8, v5, 0x1

    if-eqz v8, :cond_13

    .line 8185
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v1

    iget v8, v0, Landroid/support/design/widget/AppBarLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v8

    iget v0, v0, Landroid/support/design/widget/AppBarLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x0

    .line 8188
    and-int/lit8 v1, v5, 0x2

    if-eqz v1, :cond_0

    .line 8191
    invoke-static {v6}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 8195
    :cond_0
    :goto_1
    invoke-static {v6}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8199
    :cond_1
    if-lez v0, :cond_7

    .line 8200
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int v1, v3, v1

    .line 8201
    int-to-float v3, v0

    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    .line 8202
    invoke-interface {v7, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    mul-float/2addr v0, v3

    .line 8201
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 8205
    invoke-static {v2}, Ljava/lang/Integer;->signum(I)I

    move-result v1

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    .line 10758
    :goto_2
    invoke-super {p0, v0}, Landroid/support/design/widget/HeaderBehavior;->setTopAndBottomOffset(I)Z

    move-result v1

    .line 8139
    sub-int v3, v4, v2

    .line 8141
    sub-int v0, v2, v0

    iput v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetDelta:I

    .line 8143
    if-nez v1, :cond_2

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->hasChildWithInterpolator()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8148
    invoke-virtual {p1, p2}, Landroid/support/design/widget/CoordinatorLayout;->dispatchDependentViewsChanged(Landroid/view/View;)V

    .line 11758
    :cond_2
    invoke-super {p0}, Landroid/support/design/widget/HeaderBehavior;->getTopAndBottomOffset()I

    .line 8155
    if-ge v2, v4, :cond_9

    const/4 v0, -0x1

    move v1, v0

    .line 13270
    :goto_3
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 13271
    const/4 v0, 0x0

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v6

    move v4, v0

    :goto_4
    if-ge v4, v6, :cond_b

    .line 13272
    invoke-virtual {p2, v4}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 13273
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v7

    if-lt v5, v7, :cond_a

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v7

    if-gt v5, v7, :cond_a

    move-object v4, v0

    .line 13221
    :goto_5
    if-eqz v4, :cond_4

    .line 13222
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    .line 13718
    iget v5, v0, Landroid/support/design/widget/AppBarLayout$LayoutParams;->mScrollFlags:I

    .line 13224
    const/4 v0, 0x0

    .line 13226
    and-int/lit8 v6, v5, 0x1

    if-eqz v6, :cond_3

    .line 13227
    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v6

    .line 13229
    if-lez v1, :cond_d

    and-int/lit8 v1, v5, 0xc

    if-eqz v1, :cond_d

    .line 13233
    neg-int v0, v2

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v1

    sub-int/2addr v1, v6

    if-lt v0, v1, :cond_c

    const/4 v0, 0x1

    .line 13241
    :cond_3
    :goto_6
    invoke-virtual {p2, v0}, Landroid/support/design/widget/AppBarLayout;->setCollapsedState(Z)Z

    move-result v0

    .line 13243
    if-eqz v0, :cond_4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_4

    .line 16255
    invoke-virtual {p1, p2}, Landroid/support/design/widget/CoordinatorLayout;->getDependents(Landroid/view/View;)Ljava/util/List;

    move-result-object v2

    .line 16256
    const/4 v0, 0x0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    move v1, v0

    :goto_7
    if-ge v1, v4, :cond_11

    .line 16257
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 16259
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 16605
    iget-object v0, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehavior$9HGMSP3IDTKM8BRJELO70RRIEGNM8PBJD5JMSBRND5I6EPBK5T1MURRICHKMSOBKDTP4OOBPDTQN8922CLK62TJ9DTP3M___:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 16262
    instance-of v5, v0, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;

    if-eqz v5, :cond_10

    .line 16263
    check-cast v0, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;

    invoke-virtual {v0}, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;->getOverlayTop()I

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    .line 13244
    :goto_8
    if-eqz v0, :cond_4

    .line 13247
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->jumpDrawablesToCurrentState()V

    :cond_4
    move v0, v3

    .line 758
    :cond_5
    :goto_9
    return v0

    .line 8174
    :cond_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    :cond_7
    move v0, v2

    .line 8133
    goto/16 :goto_2

    :cond_8
    move v0, v2

    goto/16 :goto_2

    .line 8155
    :cond_9
    const/4 v0, 0x1

    move v1, v0

    goto/16 :goto_3

    .line 13271
    :cond_a
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_4

    .line 13277
    :cond_b
    const/4 v0, 0x0

    move-object v4, v0

    goto :goto_5

    .line 13233
    :cond_c
    const/4 v0, 0x0

    goto :goto_6

    .line 13234
    :cond_d
    and-int/lit8 v1, v5, 0x2

    if-eqz v1, :cond_3

    .line 13237
    neg-int v0, v2

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v1

    sub-int/2addr v1, v6

    if-lt v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_6

    :cond_e
    const/4 v0, 0x0

    goto :goto_6

    .line 16263
    :cond_f
    const/4 v0, 0x0

    goto :goto_8

    .line 16256
    :cond_10
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    .line 16266
    :cond_11
    const/4 v0, 0x0

    goto :goto_8

    .line 8160
    :cond_12
    const/4 v1, 0x0

    iput v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetDelta:I

    goto :goto_9

    :cond_13
    move v0, v1

    goto/16 :goto_1
.end method

.method public final bridge synthetic setTopAndBottomOffset(I)Z
    .locals 1

    .prologue
    .line 758
    invoke-super {p0, p1}, Landroid/support/design/widget/HeaderBehavior;->setTopAndBottomOffset(I)Z

    move-result v0

    return v0
.end method
