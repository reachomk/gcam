.class public final Lcom/android/camera/ui/wirers/ViewfinderGestureManagerWirer_Factory;
.super Ljava/lang/Object;
.source "ViewfinderGestureManagerWirer_Factory.java"

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
.field private final cameraActivityUiProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/views/CameraActivityUi;",
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

.field private final evCompViewControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/evcomp/EvCompViewController;",
            ">;"
        }
    .end annotation
.end field

.field private final previewLongPressListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/wirers/PreviewLongPressListener;",
            ">;"
        }
    .end annotation
.end field

.field private final previewTapListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/wirers/PreviewTapListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/views/CameraActivityUi;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/wirers/PreviewTapListener;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/wirers/PreviewLongPressListener;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/evcomp/EvCompViewController;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/camera/ui/wirers/ViewfinderGestureManagerWirer_Factory;->cameraActivityUiProvider:Ljavax/inject/Provider;

    .line 32
    iput-object p2, p0, Lcom/android/camera/ui/wirers/ViewfinderGestureManagerWirer_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 34
    iput-object p3, p0, Lcom/android/camera/ui/wirers/ViewfinderGestureManagerWirer_Factory;->previewTapListenerProvider:Ljavax/inject/Provider;

    .line 36
    iput-object p4, p0, Lcom/android/camera/ui/wirers/ViewfinderGestureManagerWirer_Factory;->previewLongPressListenerProvider:Ljavax/inject/Provider;

    .line 38
    iput-object p5, p0, Lcom/android/camera/ui/wirers/ViewfinderGestureManagerWirer_Factory;->evCompViewControllerProvider:Ljavax/inject/Provider;

    .line 39
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 10
    .line 1043
    new-instance v0, Lcom/android/camera/ui/wirers/ViewfinderGestureManagerWirer;

    iget-object v1, p0, Lcom/android/camera/ui/wirers/ViewfinderGestureManagerWirer_Factory;->cameraActivityUiProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/camera/ui/wirers/ViewfinderGestureManagerWirer_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 1045
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    iget-object v3, p0, Lcom/android/camera/ui/wirers/ViewfinderGestureManagerWirer_Factory;->previewTapListenerProvider:Ljavax/inject/Provider;

    .line 1046
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/ui/wirers/PreviewTapListener;

    iget-object v4, p0, Lcom/android/camera/ui/wirers/ViewfinderGestureManagerWirer_Factory;->previewLongPressListenerProvider:Ljavax/inject/Provider;

    .line 1047
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/ui/wirers/PreviewLongPressListener;

    iget-object v5, p0, Lcom/android/camera/ui/wirers/ViewfinderGestureManagerWirer_Factory;->evCompViewControllerProvider:Ljavax/inject/Provider;

    .line 1048
    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/camera/evcomp/EvCompViewController;

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ui/wirers/ViewfinderGestureManagerWirer;-><init>(Ljavax/inject/Provider;Landroid/content/Context;Lcom/android/camera/ui/wirers/PreviewTapListener;Lcom/android/camera/ui/wirers/PreviewLongPressListener;Lcom/google/android/apps/camera/evcomp/EvCompViewController;)V

    .line 10
    return-object v0
.end method
