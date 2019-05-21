.class final Lcom/android/camera/ui/animation/SlidingButtonAnimation$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SlidingButtonAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/animation/SlidingButtonAnimation;->getAnimator(Landroid/view/View;IZ)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/camera/ui/animation/SlidingButtonAnimation$2;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 84
    iget-object v0, p0, Lcom/android/camera/ui/animation/SlidingButtonAnimation$2;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 85
    iget-object v0, p0, Lcom/android/camera/ui/animation/SlidingButtonAnimation$2;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 86
    return-void
.end method
