.class final Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder$3;
.super Ljava/lang/Object;
.source "OptionsBarAnimationBuilder.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder;->createSingleViewTranslationAnimation(ZILjava/util/List;FLandroid/view/View;Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder$XTranslatable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic val$translatable:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder$XTranslatable;


# direct methods
.method constructor <init>(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder$XTranslatable;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder$3;->val$translatable:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder$XTranslatable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .prologue
    .line 213
    iget-object v1, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder$3;->val$translatable:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder$XTranslatable;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-interface {v1, v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder$XTranslatable;->setTranslationX(F)V

    .line 214
    return-void
.end method
