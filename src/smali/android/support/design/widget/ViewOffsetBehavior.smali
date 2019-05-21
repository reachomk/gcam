.class Landroid/support/design/widget/ViewOffsetBehavior;
.super Landroid/support/v4/media/session/MediaControllerCompat;
.source "ViewOffsetBehavior.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Landroid/support/v4/media/session/MediaControllerCompat;"
    }
.end annotation


# instance fields
.field private mTempLeftRightOffset:I

.field private mTempTopBottomOffset:I

.field private mViewOffsetHelper:Landroid/support/design/widget/ViewOffsetHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Landroid/support/v4/media/session/MediaControllerCompat;-><init>()V

    .line 30
    iput v0, p0, Landroid/support/design/widget/ViewOffsetBehavior;->mTempTopBottomOffset:I

    .line 31
    iput v0, p0, Landroid/support/design/widget/ViewOffsetBehavior;->mTempLeftRightOffset:I

    .line 33
    return-void
.end method


# virtual methods
.method public getTopAndBottomOffset()I
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Landroid/support/design/widget/ViewOffsetBehavior;->mViewOffsetHelper:Landroid/support/design/widget/ViewOffsetHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/ViewOffsetBehavior;->mViewOffsetHelper:Landroid/support/design/widget/ViewOffsetHelper;

    invoke-virtual {v0}, Landroid/support/design/widget/ViewOffsetHelper;->getTopAndBottomOffset()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected layoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;I)V"
        }
    .end annotation

    .prologue
    .line 63
    invoke-virtual {p1, p2, p3}, Landroid/support/design/widget/CoordinatorLayout;->onLayoutChild(Landroid/view/View;I)V

    .line 64
    return-void
.end method

.method public onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;I)Z"
        }
    .end annotation

    .prologue
    .line 42
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/design/widget/ViewOffsetBehavior;->layoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)V

    .line 44
    iget-object v0, p0, Landroid/support/design/widget/ViewOffsetBehavior;->mViewOffsetHelper:Landroid/support/design/widget/ViewOffsetHelper;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Landroid/support/design/widget/ViewOffsetHelper;

    invoke-direct {v0, p2}, Landroid/support/design/widget/ViewOffsetHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/support/design/widget/ViewOffsetBehavior;->mViewOffsetHelper:Landroid/support/design/widget/ViewOffsetHelper;

    .line 47
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/ViewOffsetBehavior;->mViewOffsetHelper:Landroid/support/design/widget/ViewOffsetHelper;

    invoke-virtual {v0}, Landroid/support/design/widget/ViewOffsetHelper;->onViewLayout()V

    .line 49
    iget v0, p0, Landroid/support/design/widget/ViewOffsetBehavior;->mTempTopBottomOffset:I

    if-eqz v0, :cond_1

    .line 50
    iget-object v0, p0, Landroid/support/design/widget/ViewOffsetBehavior;->mViewOffsetHelper:Landroid/support/design/widget/ViewOffsetHelper;

    iget v1, p0, Landroid/support/design/widget/ViewOffsetBehavior;->mTempTopBottomOffset:I

    invoke-virtual {v0, v1}, Landroid/support/design/widget/ViewOffsetHelper;->setTopAndBottomOffset(I)Z

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/design/widget/ViewOffsetBehavior;->mTempTopBottomOffset:I

    .line 58
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public setTopAndBottomOffset(I)Z
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Landroid/support/design/widget/ViewOffsetBehavior;->mViewOffsetHelper:Landroid/support/design/widget/ViewOffsetHelper;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Landroid/support/design/widget/ViewOffsetBehavior;->mViewOffsetHelper:Landroid/support/design/widget/ViewOffsetHelper;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/ViewOffsetHelper;->setTopAndBottomOffset(I)Z

    move-result v0

    .line 72
    :goto_0
    return v0

    .line 70
    :cond_0
    iput p1, p0, Landroid/support/design/widget/ViewOffsetBehavior;->mTempTopBottomOffset:I

    .line 72
    const/4 v0, 0x0

    goto :goto_0
.end method
