.class final Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder$4;
.super Ljava/lang/Object;
.source "OptionsBarAnimationBuilder.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder;->createCircleAnimator(Landroid/view/View;Z)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder;


# direct methods
.method constructor <init>(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder;)V
    .locals 0

    .prologue
    .line 249
    iput-object p1, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder$4;->this$0:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .prologue
    .line 252
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 253
    iget-object v1, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder$4;->this$0:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder;

    invoke-static {v1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder;->access$100(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder;)Lcom/google/android/apps/camera/optionsbar/view/ScalableCircle;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/apps/camera/optionsbar/view/ScalableCircle;->setScale(F)V

    .line 254
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder$4;->this$0:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder;

    invoke-static {v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder;->access$200(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder;)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->invalidateSelf()V

    .line 255
    return-void
.end method
