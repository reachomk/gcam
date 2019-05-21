.class final Lcom/android/camera/ui/videoswipehint/VideoSwipeHintUiImpl$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "VideoSwipeHintUiImpl.java"


# instance fields
.field private synthetic val$hintView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/camera/ui/videoswipehint/VideoSwipeHintUiImpl$1;->val$hintView:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/camera/ui/videoswipehint/VideoSwipeHintUiImpl$1;->val$hintView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 59
    iget-object v0, p0, Lcom/android/camera/ui/videoswipehint/VideoSwipeHintUiImpl$1;->val$hintView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 60
    return-void
.end method
