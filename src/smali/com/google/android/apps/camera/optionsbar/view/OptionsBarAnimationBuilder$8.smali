.class final Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OptionsBarAnimationBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder;->fadeViewInAnimation(Landroid/view/View;)Landroid/animation/ValueAnimator;
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
    .line 288
    iput-object p1, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder$8;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 291
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder$8;->val$view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 292
    return-void
.end method
