.class final Lcom/android/camera/widget/RoundedThumbnailView$1$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "RoundedThumbnailView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/widget/RoundedThumbnailView$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$1:Lcom/android/camera/widget/RoundedThumbnailView$1;


# direct methods
.method constructor <init>(Lcom/android/camera/widget/RoundedThumbnailView$1;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Lcom/android/camera/widget/RoundedThumbnailView$1$2;->this$1:Lcom/android/camera/widget/RoundedThumbnailView$1;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 244
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 245
    iget-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView$1$2;->this$1:Lcom/android/camera/widget/RoundedThumbnailView$1;

    iget-object v0, v0, Lcom/android/camera/widget/RoundedThumbnailView$1;->this$0:Lcom/android/camera/widget/RoundedThumbnailView;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-static {v0, v1}, Lcom/android/camera/widget/RoundedThumbnailView;->access$002(Lcom/android/camera/widget/RoundedThumbnailView;F)F

    .line 246
    iget-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView$1$2;->this$1:Lcom/android/camera/widget/RoundedThumbnailView$1;

    iget-object v0, v0, Lcom/android/camera/widget/RoundedThumbnailView$1;->this$0:Lcom/android/camera/widget/RoundedThumbnailView;

    invoke-static {v0}, Lcom/android/camera/widget/RoundedThumbnailView;->access$100(Lcom/android/camera/widget/RoundedThumbnailView;)Lcom/google/common/base/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView$1$2;->this$1:Lcom/android/camera/widget/RoundedThumbnailView$1;

    iget-object v0, v0, Lcom/android/camera/widget/RoundedThumbnailView$1;->this$0:Lcom/android/camera/widget/RoundedThumbnailView;

    invoke-static {v0}, Lcom/android/camera/widget/RoundedThumbnailView;->access$100(Lcom/android/camera/widget/RoundedThumbnailView;)Lcom/google/common/base/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/widget/RoundedThumbnailView$Callback;

    invoke-interface {v0}, Lcom/android/camera/widget/RoundedThumbnailView$Callback;->onHitStateFinished()V

    .line 249
    :cond_0
    return-void
.end method
