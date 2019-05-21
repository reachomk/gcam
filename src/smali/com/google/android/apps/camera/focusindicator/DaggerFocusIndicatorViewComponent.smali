.class public final Lcom/google/android/apps/camera/focusindicator/DaggerFocusIndicatorViewComponent;
.super Ljava/lang/Object;
.source "DaggerFocusIndicatorViewComponent.java"

# interfaces
.implements Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView$Injector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/camera/focusindicator/DaggerFocusIndicatorViewComponent$Builder;
    }
.end annotation


# instance fields
.field private focusIndicatorAnimatorListenerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorListenerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private focusIndicatorViewMembersInjector:Ldagger/MembersInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/MembersInjector",
            "<",
            "Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;",
            ">;"
        }
    .end annotation
.end field

.field private provideActiveFocusConvergeAnimatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private provideActiveFocusScanAnimatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private provideAnimatorListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorListener;",
            ">;"
        }
    .end annotation
.end field

.field private provideContextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private provideDebugChipViewProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private provideFocusIndicatorChipViewProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private provideFocusIndicatorViewDrawerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingDrawer;",
            ">;"
        }
    .end annotation
.end field

.field private provideFocusIndicatorViewProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;",
            ">;"
        }
    .end annotation
.end field

.field private provideFocusLockHoldAnimatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private provideFocusLockReleaseAnimatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private providePassiveFocusAnimatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private providePassiveFocusConvergeAnimatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private provideResourcesProvider:Ljavax/inject/Provider;
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
.method private constructor <init>(Lcom/google/android/apps/camera/focusindicator/DaggerFocusIndicatorViewComponent$Builder;)V
    .locals 11

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1070
    invoke-static {p1}, Lcom/google/android/apps/camera/focusindicator/DaggerFocusIndicatorViewComponent$Builder;->access$100(Lcom/google/android/apps/camera/focusindicator/DaggerFocusIndicatorViewComponent$Builder;)Lcom/google/android/apps/camera/focusindicator/FocusIndicatorViewModule;

    move-result-object v0

    .line 2026
    new-instance v1, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorViewModule_ProvideFocusIndicatorViewFactory;

    invoke-direct {v1, v0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorViewModule_ProvideFocusIndicatorViewFactory;-><init>(Lcom/google/android/apps/camera/focusindicator/FocusIndicatorViewModule;)V

    .line 1069
    iput-object v1, p0, Lcom/google/android/apps/camera/focusindicator/DaggerFocusIndicatorViewComponent;->provideFocusIndicatorViewProvider:Ljavax/inject/Provider;

    .line 1074
    invoke-static {p1}, Lcom/google/android/apps/camera/focusindicator/DaggerFocusIndicatorViewComponent$Builder;->access$100(Lcom/google/android/apps/camera/focusindicator/DaggerFocusIndicatorViewComponent$Builder;)Lcom/google/android/apps/camera/focusindicator/FocusIndicatorViewModule;

    move-result-object v0

    .line 3026
    new-instance v1, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorViewModule_ProvideFocusIndicatorViewDrawerFactory;

    invoke-direct {v1, v0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorViewModule_ProvideFocusIndicatorViewDrawerFactory;-><init>(Lcom/google/android/apps/camera/focusindicator/FocusIndicatorViewModule;)V

    .line 1073
    iput-object v1, p0, Lcom/google/android/apps/camera/focusindicator/DaggerFocusIndicatorViewComponent;->provideFocusIndicatorViewDrawerProvider:Ljavax/inject/Provider;

    .line 1078
    invoke-static {p1}, Lcom/google/android/apps/camera/focusindicator/DaggerFocusIndicatorViewComponent$Builder;->access$100(Lcom/google/android/apps/camera/focusindicator/DaggerFocusIndicatorViewComponent$Builder;)Lcom/google/android/apps/camera/focusindicator/FocusIndicatorViewModule;

    move-result-object v0

    .line 3027
    new-instance v1, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorViewModule_ProvideFocusIndicatorChipViewFactory;

    invoke-direct {v1, v0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorViewModule_ProvideFocusIndicatorChipViewFactory;-><init>(Lcom/google/android/apps/camera/focusindicator/FocusIndicatorViewModule;)V

    .line 1077
    iput-object v1, p0, Lcom/google/android/apps/camera/focusindicator/DaggerFocusIndicatorViewComponent;->provideFocusIndicatorChipViewProvider:Ljavax/inject/Provider;

    .line 1082
    invoke-static {p1}, Lcom/google/android/apps/camera/focusindicator/DaggerFocusIndicatorViewComponent$Builder;->access$100(Lcom/google/android/apps/camera/focusindicator/DaggerFocusIndicatorViewComponent$Builder;)Lcom/google/android/apps/camera/focusindicator/FocusIndicatorViewModule;

    move-result-object v0

    .line 4025
    new-instance v1, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorViewModule_ProvideDebugChipViewFactory;

    invoke-direct {v1, v0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorViewModule_ProvideDebugChipViewFactory;-><init>(Lcom/google/android/apps/camera/focusindicator/FocusIndicatorViewModule;)V

    .line 1081
    iput-object v1, p0, Lcom/google/android/apps/camera/focusindicator/DaggerFocusIndicatorViewComponent;->provideDebugChipViewProvider:Ljavax/inject/Provider;

    .line 1085
    invoke-static {p1}, Lcom/google/android/apps/camera/focusindicator/DaggerFocusIndicatorViewComponent$Builder;->access$100(Lcom/google/android/apps/camera/focusindicator/DaggerFocusIndicatorViewComponent$Builder;)Lcom/google/android/apps/camera/focusindicator/FocusIndicatorViewModule;

    move-result-object v0

    .line 5024
    new-instance v1, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorViewModule_ProvideContextFactory;

    invoke-direct {v1, v0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorViewModule_ProvideContextFactory;-><init>(Lcom/google/android/apps/camera/focusindicator/FocusIndicatorViewModule;)V

    .line 1085
    iput-object v1, p0, Lcom/google/android/apps/camera/focusindicator/DaggerFocusIndicatorViewComponent;->provideContextProvider:Ljavax/inject/Provider;

    .line 1088
    invoke-static {p1}, Lcom/google/android/apps/camera/focusindicator/DaggerFocusIndicatorViewComponent$Builder;->access$100(Lcom/google/android/apps/camera/focusindicator/DaggerFocusIndicatorViewComponent$Builder;)Lcom/google/android/apps/camera/focusindicator/FocusIndicatorViewModule;

    move-result-object v0

    .line 6024
    new-instance v1, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorViewModule_ProvideResourcesFactory;

    invoke-direct {v1, v0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorViewModule_ProvideResourcesFactory;-><init>(Lcom/google/android/apps/camera/focusindicator/FocusIndicatorViewModule;)V

    .line 1088
    iput-object v1, p0, Lcom/google/android/apps/camera/focusindicator/DaggerFocusIndicatorViewComponent;->provideResourcesProvider:Ljavax/inject/Provider;

    .line 1090
    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/DaggerFocusIndicatorViewComponent;->provideFocusIndicatorChipViewProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/google/android/apps/camera/focusindicator/DaggerFocusIndicatorViewComponent;->provideFocusIndicatorViewProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/google/android/apps/camera/focusindicator/DaggerFocusIndicatorViewComponent;->provideFocusIndicatorViewDrawerProvider:Ljavax/inject/Provider;

    .line 6043
    new-instance v3, Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorListenerImpl_Factory;

    invoke-direct {v3, v0, v1, v2}, Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorListenerImpl_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 1091
    iput-object v3, p0, Lcom/google/android/apps/camera/focusindicator/DaggerFocusIndicatorViewComponent;->focusIndicatorAnimatorListenerImplProvider:Ljavax/inject/Provider;

    .line 1099
    invoke-static {p1}, Lcom/google/android/apps/camera/focusindicator/DaggerFocusIndicatorViewComponent$Builder;->access$200(Lcom/google/android/apps/camera/focusindicator/DaggerFocusIndicatorViewComponent$Builder;)Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorModule;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/camera/focusindicator/DaggerFocusIndicatorViewComponent;->focusIndicatorAnimatorListenerImplProvider:Ljavax/inject/Provider;

    .line 7034
    new-instance v2, Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorModule_ProvideAnimatorListenerFactory;

    invoke-direct {v2, v0, v1}, Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorModule_ProvideAnimatorListenerFactory;-><init>(Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorModule;Ljavax/inject/Provider;)V

    .line 1097
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/camera/focusindicator/DaggerFocusIndicatorViewComponent;->provideAnimatorListenerProvider:Ljavax/inject/Provider;

    .line 1104
    invoke-static {p1}, Lcom/google/android/apps/camera/focusindicator/DaggerFocusIndicatorViewComponent$Builder;->access$200(Lcom/google/android/apps/camera/focusindicator/DaggerFocusIndicatorViewComponent$Builder;)Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorModule;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/camera/focusindicator/DaggerFocusIndicatorViewComponent;->provideContextProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/google/android/apps/camera/focusindicator/DaggerFocusIndicatorViewComponent;->provideResourcesProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/google/android/apps/camera/focusindicator/DaggerFocusIndicatorViewComponent;->provideFocusIndicatorChipViewProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/google/android/apps/camera/focusindicator/DaggerFocusIndicatorViewComponent;->provideFocusIndicatorViewDrawerProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/google/android/apps/camera/focusindicator/DaggerFocusIndicatorViewComponent;->provideAnimatorListenerProvider:Ljavax/inject/Provider;

    .line 7068
    new-instance v0, Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorModule_ProvideActiveFocusScanAnimatorFactory;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorModule_ProvideActiveFocusScanAnimatorFactory;-><init>(Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 1102
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/camera/focusindicator/DaggerFocusIndicatorViewComponent;->provideActiveFocusScanAnimatorProvider:Ljavax/inject/Provider;

    .line 1114
    invoke-static {p1}, Lcom/google/android/apps/camera/focusindicator/DaggerFocusIndicatorViewComponent$Builder;->access$200(Lcom/google/android/apps/camera/focusindicator/DaggerFocusIndicatorViewComponent$Builder;)Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorModule;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/camera/focusindicator/DaggerFocusIndicatorViewComponent;->provideContextProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/google/android/apps/camera/focusindicator/DaggerFocusIndicatorViewComponent;->provideAnimatorListenerProvider:Ljavax/inject/Provider;

    .line 8043
    new-instance v3, Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorModule_ProvideActiveFocusConvergeAnimatorFactory;

    invoke-direct {v3, v0, v1, v2}, Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorModule_ProvideActiveFocusConvergeAnimatorFactory;-><init>(Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 1112
    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/camera/focusindicator/DaggerFocusIndicatorViewComponent;->provideActiveFocusConvergeAnimatorProvider:Ljavax/inject/Provider;

    .line 1121
    invoke-static {p1}, Lcom/google/android/apps/camera/focusindicator/DaggerFocusIndicatorViewComponent$Builder;->access$200(Lcom/google/android/apps/camera/focusindicator/DaggerFocusIndicatorViewComponent$Builder;)Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorModule;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/camera/focusindicator/DaggerFocusIndicatorViewComponent;->provideContextProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/google/android/apps/camera/focusindicator/DaggerFocusIndicatorViewComponent;->provideResourcesProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/google/android/apps/camera/focusindicator/DaggerFocusIndicatorViewComponent;->provideFocusIndicatorViewDrawerProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/google/android/apps/camera/focusindicator/DaggerFocusIndicatorViewComponent;->provideAnimatorListenerProvider:Ljavax/inject/Provider;

    .line 8060
    new-instance v0, Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorModule_ProvidePassiveFocusAnimatorFactory;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorModule_ProvidePassiveFocusAnimatorFactory;-><init>(Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 1119
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/camera/focusindicator/DaggerFocusIndicatorViewComponent;->providePassiveFocusAnimatorProvider:Ljavax/inject/Provider;

    .line 1130
    invoke-static {p1}, Lcom/google/android/apps/camera/focusindicator/DaggerFocusIndicatorViewComponent$Builder;->access$200(Lcom/google/android/apps/camera/focusindicator/DaggerFocusIndicatorViewComponent$Builder;)Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorModule;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/camera/focusindicator/DaggerFocusIndicatorViewComponent;->provideContextProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/google/android/apps/camera/focusindicator/DaggerFocusIndicatorViewComponent;->provideAnimatorListenerProvider:Ljavax/inject/Provider;

    .line 9043
    new-instance v3, Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorModule_ProvidePassiveFocusConvergeAnimatorFactory;

    invoke-direct {v3, v0, v1, v2}, Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorModule_ProvidePassiveFocusConvergeAnimatorFactory;-><init>(Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 1128
    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/camera/focusindicator/DaggerFocusIndicatorViewComponent;->providePassiveFocusConvergeAnimatorProvider:Ljavax/inject/Provider;

    .line 1137
    invoke-static {p1}, Lcom/google/android/apps/camera/focusindicator/DaggerFocusIndicatorViewComponent$Builder;->access$200(Lcom/google/android/apps/camera/focusindicator/DaggerFocusIndicatorViewComponent$Builder;)Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorModule;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/camera/focusindicator/DaggerFocusIndicatorViewComponent;->provideContextProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/google/android/apps/camera/focusindicator/DaggerFocusIndicatorViewComponent;->provideResourcesProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/google/android/apps/camera/focusindicator/DaggerFocusIndicatorViewComponent;->provideFocusIndicatorViewDrawerProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/google/android/apps/camera/focusindicator/DaggerFocusIndicatorViewComponent;->provideFocusIndicatorChipViewProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/google/android/apps/camera/focusindicator/DaggerFocusIndicatorViewComponent;->provideAnimatorListenerProvider:Ljavax/inject/Provider;

    .line 9068
    new-instance v0, Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorModule_ProvideFocusLockHoldAnimatorFactory;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorModule_ProvideFocusLockHoldAnimatorFactory;-><init>(Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 1135
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/camera/focusindicator/DaggerFocusIndicatorViewComponent;->provideFocusLockHoldAnimatorProvider:Ljavax/inject/Provider;

    .line 1147
    invoke-static {p1}, Lcom/google/android/apps/camera/focusindicator/DaggerFocusIndicatorViewComponent$Builder;->access$200(Lcom/google/android/apps/camera/focusindicator/DaggerFocusIndicatorViewComponent$Builder;)Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorModule;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/camera/focusindicator/DaggerFocusIndicatorViewComponent;->provideContextProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/google/android/apps/camera/focusindicator/DaggerFocusIndicatorViewComponent;->provideAnimatorListenerProvider:Ljavax/inject/Provider;

    .line 10043
    new-instance v3, Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorModule_ProvideFocusLockReleaseAnimatorFactory;

    invoke-direct {v3, v0, v1, v2}, Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorModule_ProvideFocusLockReleaseAnimatorFactory;-><init>(Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 1145
    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/camera/focusindicator/DaggerFocusIndicatorViewComponent;->provideFocusLockReleaseAnimatorProvider:Ljavax/inject/Provider;

    .line 1151
    iget-object v1, p0, Lcom/google/android/apps/camera/focusindicator/DaggerFocusIndicatorViewComponent;->provideFocusIndicatorViewProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/google/android/apps/camera/focusindicator/DaggerFocusIndicatorViewComponent;->provideFocusIndicatorViewDrawerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/google/android/apps/camera/focusindicator/DaggerFocusIndicatorViewComponent;->provideFocusIndicatorChipViewProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/google/android/apps/camera/focusindicator/DaggerFocusIndicatorViewComponent;->provideDebugChipViewProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/google/android/apps/camera/focusindicator/DaggerFocusIndicatorViewComponent;->provideActiveFocusScanAnimatorProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/google/android/apps/camera/focusindicator/DaggerFocusIndicatorViewComponent;->provideActiveFocusConvergeAnimatorProvider:Ljavax/inject/Provider;

    iget-object v7, p0, Lcom/google/android/apps/camera/focusindicator/DaggerFocusIndicatorViewComponent;->providePassiveFocusAnimatorProvider:Ljavax/inject/Provider;

    iget-object v8, p0, Lcom/google/android/apps/camera/focusindicator/DaggerFocusIndicatorViewComponent;->providePassiveFocusConvergeAnimatorProvider:Ljavax/inject/Provider;

    iget-object v9, p0, Lcom/google/android/apps/camera/focusindicator/DaggerFocusIndicatorViewComponent;->provideFocusLockHoldAnimatorProvider:Ljavax/inject/Provider;

    iget-object v10, p0, Lcom/google/android/apps/camera/focusindicator/DaggerFocusIndicatorViewComponent;->provideFocusLockReleaseAnimatorProvider:Ljavax/inject/Provider;

    .line 10076
    new-instance v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView_MembersInjector;

    invoke-direct/range {v0 .. v10}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 1152
    iput-object v0, p0, Lcom/google/android/apps/camera/focusindicator/DaggerFocusIndicatorViewComponent;->focusIndicatorViewMembersInjector:Ldagger/MembersInjector;

    .line 59
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/camera/focusindicator/DaggerFocusIndicatorViewComponent$Builder;B)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/google/android/apps/camera/focusindicator/DaggerFocusIndicatorViewComponent;-><init>(Lcom/google/android/apps/camera/focusindicator/DaggerFocusIndicatorViewComponent$Builder;)V

    return-void
.end method


# virtual methods
.method public final inject(Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;)V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/DaggerFocusIndicatorViewComponent;->focusIndicatorViewMembersInjector:Ldagger/MembersInjector;

    invoke-interface {v0, p1}, Ldagger/MembersInjector;->injectMembers(Ljava/lang/Object;)V

    .line 168
    return-void
.end method
