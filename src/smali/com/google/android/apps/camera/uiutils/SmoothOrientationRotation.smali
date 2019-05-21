.class public final Lcom/google/android/apps/camera/uiutils/SmoothOrientationRotation;
.super Ljava/lang/Object;
.source "SmoothOrientationRotation.java"


# instance fields
.field private currentRotation:I

.field private final rotateAnimFromLeft:Landroid/animation/Animator;

.field private final rotateAnimFromRight:Landroid/animation/Animator;

.field private final viewToRotate:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/camera/uiutils/SmoothOrientationRotation;->currentRotation:I

    .line 27
    iput-object p1, p0, Lcom/google/android/apps/camera/uiutils/SmoothOrientationRotation;->viewToRotate:Landroid/view/View;

    .line 29
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060023

    .line 28
    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/camera/uiutils/SmoothOrientationRotation;->rotateAnimFromLeft:Landroid/animation/Animator;

    .line 30
    iget-object v0, p0, Lcom/google/android/apps/camera/uiutils/SmoothOrientationRotation;->rotateAnimFromLeft:Landroid/animation/Animator;

    invoke-virtual {v0, p1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 33
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060022

    .line 32
    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/camera/uiutils/SmoothOrientationRotation;->rotateAnimFromRight:Landroid/animation/Animator;

    .line 34
    iget-object v0, p0, Lcom/google/android/apps/camera/uiutils/SmoothOrientationRotation;->rotateAnimFromRight:Landroid/animation/Animator;

    invoke-virtual {v0, p1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 35
    return-void
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/apps/camera/uiutils/SmoothOrientationRotation;->viewToRotate:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/camera/uiutils/SmoothOrientationRotation;->currentRotation:I

    .line 42
    return-void
.end method

.method public final onConfigurationChanged()V
    .locals 2

    .prologue
    .line 48
    iget v0, p0, Lcom/google/android/apps/camera/uiutils/SmoothOrientationRotation;->currentRotation:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 49
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "onAttachedToWindow not called yet; current rotation unknown."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/camera/uiutils/SmoothOrientationRotation;->viewToRotate:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 53
    iget v1, p0, Lcom/google/android/apps/camera/uiutils/SmoothOrientationRotation;->currentRotation:I

    add-int/lit8 v1, v1, 0x1

    rem-int/lit8 v1, v1, 0x4

    if-ne v0, v1, :cond_2

    .line 54
    iget-object v1, p0, Lcom/google/android/apps/camera/uiutils/SmoothOrientationRotation;->rotateAnimFromLeft:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    .line 61
    :cond_1
    :goto_0
    iput v0, p0, Lcom/google/android/apps/camera/uiutils/SmoothOrientationRotation;->currentRotation:I

    .line 62
    return-void

    .line 55
    :cond_2
    iget v1, p0, Lcom/google/android/apps/camera/uiutils/SmoothOrientationRotation;->currentRotation:I

    add-int/lit8 v1, v1, 0x3

    rem-int/lit8 v1, v1, 0x4

    if-ne v0, v1, :cond_1

    .line 56
    iget-object v1, p0, Lcom/google/android/apps/camera/uiutils/SmoothOrientationRotation;->rotateAnimFromRight:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    goto :goto_0
.end method
