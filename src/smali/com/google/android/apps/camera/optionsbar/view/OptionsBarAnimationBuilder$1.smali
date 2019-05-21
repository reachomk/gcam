.class final Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder$1;
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
.field private synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final setTranslationX(F)V
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder$1;->val$view:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 173
    return-void
.end method
