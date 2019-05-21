.class public final Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorModule_ProvidePassiveFocusAnimatorFactory;
.super Ljava/lang/Object;
.source "FocusIndicatorAnimatorModule_ProvidePassiveFocusAnimatorFactory.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider;"
    }
.end annotation


# instance fields
.field private final animatorListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorListener;",
            ">;"
        }
    .end annotation
.end field

.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final focusIndicatorRingDrawerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingDrawer;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorModule;

.field private final resourcesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/content/res/Resources;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorModule;",
            "Ljavax/inject/Provider",
            "<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Landroid/content/res/Resources;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingDrawer;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorListener;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorModule_ProvidePassiveFocusAnimatorFactory;->module:Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorModule;

    .line 34
    iput-object p2, p0, Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorModule_ProvidePassiveFocusAnimatorFactory;->contextProvider:Ljavax/inject/Provider;

    .line 36
    iput-object p3, p0, Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorModule_ProvidePassiveFocusAnimatorFactory;->resourcesProvider:Ljavax/inject/Provider;

    .line 38
    iput-object p4, p0, Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorModule_ProvidePassiveFocusAnimatorFactory;->focusIndicatorRingDrawerProvider:Ljavax/inject/Provider;

    .line 40
    iput-object p5, p0, Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorModule_ProvidePassiveFocusAnimatorFactory;->animatorListenerProvider:Ljavax/inject/Provider;

    .line 41
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 7

    .prologue
    .line 12
    .line 1045
    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorModule_ProvidePassiveFocusAnimatorFactory;->module:Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorModule;

    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorModule_ProvidePassiveFocusAnimatorFactory;->contextProvider:Ljavax/inject/Provider;

    .line 1047
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorModule_ProvidePassiveFocusAnimatorFactory;->resourcesProvider:Ljavax/inject/Provider;

    .line 1048
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorModule_ProvidePassiveFocusAnimatorFactory;->focusIndicatorRingDrawerProvider:Ljavax/inject/Provider;

    .line 1049
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingDrawer;

    iget-object v3, p0, Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorModule_ProvidePassiveFocusAnimatorFactory;->animatorListenerProvider:Ljavax/inject/Provider;

    .line 1050
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorListener;

    .line 1156
    const v4, 0x7f060020

    .line 1157
    invoke-static {v0, v4}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v4

    check-cast v4, Landroid/animation/ValueAnimator;

    .line 1160
    invoke-interface {v3}, Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorListener;->outerRingDiameterUpdateListener()Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v5

    .line 1159
    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1161
    const v5, 0x7f060021

    invoke-static {v0, v5}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    .line 1164
    invoke-interface {v3}, Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorListener;->outerRingOpacityUpdateListener()Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v3

    .line 1163
    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1166
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1167
    const/4 v5, 0x2

    new-array v5, v5, [Landroid/animation/Animator;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    const/4 v4, 0x1

    aput-object v0, v5, v4

    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1170
    new-instance v0, Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorModule$2;

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorModule$2;-><init>(Landroid/content/res/Resources;Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingDrawer;)V

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1046
    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 1045
    invoke-static {v3, v0}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 12
    return-object v0
.end method
