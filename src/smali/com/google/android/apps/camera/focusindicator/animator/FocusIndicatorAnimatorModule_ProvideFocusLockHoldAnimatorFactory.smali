.class public final Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorModule_ProvideFocusLockHoldAnimatorFactory;
.super Ljava/lang/Object;
.source "FocusIndicatorAnimatorModule_ProvideFocusLockHoldAnimatorFactory.java"

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

.field private final chipTextViewProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/widget/TextView;",
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
.method public constructor <init>(Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
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
            "Landroid/widget/TextView;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorListener;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorModule_ProvideFocusLockHoldAnimatorFactory;->module:Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorModule;

    .line 38
    iput-object p2, p0, Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorModule_ProvideFocusLockHoldAnimatorFactory;->contextProvider:Ljavax/inject/Provider;

    .line 40
    iput-object p3, p0, Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorModule_ProvideFocusLockHoldAnimatorFactory;->resourcesProvider:Ljavax/inject/Provider;

    .line 42
    iput-object p4, p0, Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorModule_ProvideFocusLockHoldAnimatorFactory;->focusIndicatorRingDrawerProvider:Ljavax/inject/Provider;

    .line 44
    iput-object p5, p0, Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorModule_ProvideFocusLockHoldAnimatorFactory;->chipTextViewProvider:Ljavax/inject/Provider;

    .line 46
    iput-object p6, p0, Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorModule_ProvideFocusLockHoldAnimatorFactory;->animatorListenerProvider:Ljavax/inject/Provider;

    .line 47
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 12

    .prologue
    .line 13
    .line 1051
    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorModule_ProvideFocusLockHoldAnimatorFactory;->module:Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorModule;

    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorModule_ProvideFocusLockHoldAnimatorFactory;->contextProvider:Ljavax/inject/Provider;

    .line 1053
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorModule_ProvideFocusLockHoldAnimatorFactory;->resourcesProvider:Ljavax/inject/Provider;

    .line 1054
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorModule_ProvideFocusLockHoldAnimatorFactory;->focusIndicatorRingDrawerProvider:Ljavax/inject/Provider;

    .line 1055
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingDrawer;

    iget-object v3, p0, Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorModule_ProvideFocusLockHoldAnimatorFactory;->chipTextViewProvider:Ljavax/inject/Provider;

    .line 1056
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorModule_ProvideFocusLockHoldAnimatorFactory;->animatorListenerProvider:Ljavax/inject/Provider;

    .line 1057
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorListener;

    .line 1202
    const v5, 0x7f060009

    .line 1203
    invoke-static {v0, v5}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v5

    check-cast v5, Landroid/animation/ValueAnimator;

    .line 1206
    invoke-interface {v4}, Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorListener;->innerSplashDiameterUpdateListener()Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v6

    .line 1205
    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1208
    const v6, 0x7f06000a

    invoke-static {v0, v6}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v6

    check-cast v6, Landroid/animation/ValueAnimator;

    .line 1211
    invoke-interface {v4}, Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorListener;->innerSplashOpacityUpdateListener()Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v7

    .line 1210
    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1213
    const v7, 0x7f06000b

    invoke-static {v0, v7}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v7

    check-cast v7, Landroid/animation/ValueAnimator;

    .line 1216
    invoke-interface {v4}, Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorListener;->outerRingOpacityUpdateListener()Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v8

    .line 1215
    invoke-virtual {v7, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1218
    const v8, 0x7f06000c

    invoke-static {v0, v8}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v8

    check-cast v8, Landroid/animation/ValueAnimator;

    .line 1221
    invoke-interface {v4}, Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorListener;->outerRingThicknessUpdateListener()Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v9

    .line 1220
    invoke-virtual {v8, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1223
    const v9, 0x7f060007

    invoke-static {v0, v9}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v9

    check-cast v9, Landroid/animation/ValueAnimator;

    .line 1226
    invoke-interface {v4}, Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorListener;->chipOpacityUpdateListener()Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v10

    .line 1225
    invoke-virtual {v9, v10}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1228
    const v10, 0x7f060008

    invoke-static {v0, v10}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    .line 1231
    invoke-interface {v4}, Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorListener;->chipSizeUpdateListener()Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v4

    .line 1230
    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1233
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1234
    const/4 v10, 0x6

    new-array v10, v10, [Landroid/animation/Animator;

    const/4 v11, 0x0

    aput-object v5, v10, v11

    const/4 v5, 0x1

    aput-object v6, v10, v5

    const/4 v5, 0x2

    aput-object v7, v10, v5

    const/4 v5, 0x3

    aput-object v8, v10, v5

    const/4 v5, 0x4

    aput-object v9, v10, v5

    const/4 v5, 0x5

    aput-object v0, v10, v5

    invoke-virtual {v4, v10}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1241
    new-instance v0, Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorModule$3;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorModule$3;-><init>(Landroid/content/res/Resources;Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingDrawer;Landroid/widget/TextView;)V

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1052
    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 1051
    invoke-static {v4, v0}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 13
    return-object v0
.end method
