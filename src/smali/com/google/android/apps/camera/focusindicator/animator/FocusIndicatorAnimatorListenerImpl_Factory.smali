.class public final Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorListenerImpl_Factory;
.super Ljava/lang/Object;
.source "FocusIndicatorAnimatorListenerImpl_Factory.java"

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

.field private final focusIndicatorRingViewProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Landroid/widget/TextView;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingDrawer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorListenerImpl_Factory;->chipTextViewProvider:Ljavax/inject/Provider;

    .line 26
    iput-object p2, p0, Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorListenerImpl_Factory;->focusIndicatorRingViewProvider:Ljavax/inject/Provider;

    .line 28
    iput-object p3, p0, Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorListenerImpl_Factory;->focusIndicatorRingDrawerProvider:Ljavax/inject/Provider;

    .line 29
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 10
    .line 1033
    new-instance v3, Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorListenerImpl;

    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorListenerImpl_Factory;->chipTextViewProvider:Ljavax/inject/Provider;

    .line 1034
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorListenerImpl_Factory;->focusIndicatorRingViewProvider:Ljavax/inject/Provider;

    .line 1035
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;

    iget-object v2, p0, Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorListenerImpl_Factory;->focusIndicatorRingDrawerProvider:Ljavax/inject/Provider;

    .line 1036
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingDrawer;

    invoke-direct {v3, v0, v1, v2}, Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorListenerImpl;-><init>(Landroid/widget/TextView;Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingDrawer;)V

    .line 10
    return-object v3
.end method
