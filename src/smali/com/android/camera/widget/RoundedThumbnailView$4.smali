.class final Lcom/android/camera/widget/RoundedThumbnailView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "RoundedThumbnailView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/widget/RoundedThumbnailView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/widget/RoundedThumbnailView;


# direct methods
.method constructor <init>(Lcom/android/camera/widget/RoundedThumbnailView;)V
    .locals 0

    .prologue
    .line 763
    iput-object p1, p0, Lcom/android/camera/widget/RoundedThumbnailView$4;->this$0:Lcom/android/camera/widget/RoundedThumbnailView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 766
    iget-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView$4;->this$0:Lcom/android/camera/widget/RoundedThumbnailView;

    invoke-static {v0}, Lcom/android/camera/widget/RoundedThumbnailView;->access$600(Lcom/android/camera/widget/RoundedThumbnailView;)Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 768
    iget-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView$4;->this$0:Lcom/android/camera/widget/RoundedThumbnailView;

    invoke-static {v0}, Lcom/android/camera/widget/RoundedThumbnailView;->access$600(Lcom/android/camera/widget/RoundedThumbnailView;)Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;->finishThumbnailAnimation()V

    .line 769
    iget-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView$4;->this$0:Lcom/android/camera/widget/RoundedThumbnailView;

    invoke-static {v0}, Lcom/android/camera/widget/RoundedThumbnailView;->access$700(Lcom/android/camera/widget/RoundedThumbnailView;)V

    .line 771
    :cond_0
    iget-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView$4;->this$0:Lcom/android/camera/widget/RoundedThumbnailView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/widget/RoundedThumbnailView;->access$802(Lcom/android/camera/widget/RoundedThumbnailView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 772
    return-void
.end method
