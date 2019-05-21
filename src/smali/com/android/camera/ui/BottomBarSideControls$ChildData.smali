.class final Lcom/android/camera/ui/BottomBarSideControls$ChildData;
.super Ljava/lang/Object;
.source "BottomBarSideControls.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/BottomBarSideControls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ChildData"
.end annotation


# instance fields
.field public child:Landroid/view/View;

.field public layoutParams:Landroid/widget/LinearLayout$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 475
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 476
    iput-object p1, p0, Lcom/android/camera/ui/BottomBarSideControls$ChildData;->child:Landroid/view/View;

    .line 477
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput-object v0, p0, Lcom/android/camera/ui/BottomBarSideControls$ChildData;->layoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 478
    return-void
.end method
