.class final Lcom/android/camera/widget/RoundedThumbnailView$8;
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
    .line 864
    iput-object p1, p0, Lcom/android/camera/widget/RoundedThumbnailView$8;->this$0:Lcom/android/camera/widget/RoundedThumbnailView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 867
    iget-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView$8;->this$0:Lcom/android/camera/widget/RoundedThumbnailView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/widget/RoundedThumbnailView;->access$1502(Lcom/android/camera/widget/RoundedThumbnailView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 868
    return-void
.end method
