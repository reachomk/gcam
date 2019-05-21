.class final Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder$2;
.super Ljava/lang/Object;
.source "OptionsBarAnimationBuilder.java"

# interfaces
.implements Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder$XTranslatable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder;->createTranslationAnimator(Landroid/view/View;Ljava/util/Set;Z)Landroid/animation/Animator;
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
    .line 179
    iput-object p1, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder$2;->this$0:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final setTranslationX(F)V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder$2;->this$0:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder;

    invoke-static {v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder;->access$000(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder;)Lcom/google/android/apps/camera/optionsbar/view/ViewMagnet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/apps/camera/optionsbar/view/ViewMagnet;->setTranslationX(F)V

    .line 183
    return-void
.end method
