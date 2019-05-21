.class public final Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorModule_ProvideAnimatorListenerFactory;
.super Ljava/lang/Object;
.source "FocusIndicatorAnimatorModule_ProvideAnimatorListenerFactory.java"

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
.field private final implProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorListenerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorModule;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorModule;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorListenerImpl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorModule_ProvideAnimatorListenerFactory;->module:Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorModule;

    .line 21
    iput-object p2, p0, Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorModule_ProvideAnimatorListenerFactory;->implProvider:Ljavax/inject/Provider;

    .line 22
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 8
    .line 1026
    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorModule_ProvideAnimatorListenerFactory;->implProvider:Ljavax/inject/Provider;

    .line 1027
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorListenerImpl;

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1026
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/focusindicator/animator/FocusIndicatorAnimatorListener;

    .line 8
    return-object v0
.end method
