.class public final Lcom/google/android/apps/refocus/camera/ShutterAnimation;
.super Ljava/lang/Object;
.source "ShutterAnimation.java"


# instance fields
.field private frame:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/google/android/apps/refocus/camera/ShutterAnimation;->frame:Landroid/view/View;

    .line 24
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/refocus/camera/ShutterAnimation;)Landroid/view/View;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/google/android/apps/refocus/camera/ShutterAnimation;->frame:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public final start()V
    .locals 4

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/apps/refocus/camera/ShutterAnimation;->frame:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 31
    iget-object v0, p0, Lcom/google/android/apps/refocus/camera/ShutterAnimation;->frame:Landroid/view/View;

    .line 32
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 33
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    .line 34
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/refocus/camera/ShutterAnimation$1;

    invoke-direct {v1, p0}, Lcom/google/android/apps/refocus/camera/ShutterAnimation$1;-><init>(Lcom/google/android/apps/refocus/camera/ShutterAnimation;)V

    .line 35
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 43
    return-void
.end method
