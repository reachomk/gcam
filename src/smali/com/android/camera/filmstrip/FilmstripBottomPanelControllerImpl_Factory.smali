.class public final Lcom/android/camera/filmstrip/FilmstripBottomPanelControllerImpl_Factory;
.super Ljava/lang/Object;
.source "FilmstripBottomPanelControllerImpl_Factory.java"

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
.field private final activityLayoutInflaterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/view/LayoutInflater;",
            ">;"
        }
    .end annotation
.end field

.field private final activityProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final activityResourcesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/content/res/Resources;",
            ">;"
        }
    .end annotation
.end field

.field private final cameraFilmstripUiProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/viewfinder/ViewfinderModule;",
            ">;"
        }
    .end annotation
.end field

.field private final settingsManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/settings/SettingsManager;",
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
            "Landroid/app/Activity;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Landroid/view/LayoutInflater;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Landroid/content/res/Resources;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/viewfinder/ViewfinderModule;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/settings/SettingsManager;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/camera/filmstrip/FilmstripBottomPanelControllerImpl_Factory;->activityProvider:Ljavax/inject/Provider;

    .line 34
    iput-object p2, p0, Lcom/android/camera/filmstrip/FilmstripBottomPanelControllerImpl_Factory;->activityLayoutInflaterProvider:Ljavax/inject/Provider;

    .line 36
    iput-object p3, p0, Lcom/android/camera/filmstrip/FilmstripBottomPanelControllerImpl_Factory;->activityResourcesProvider:Ljavax/inject/Provider;

    .line 38
    iput-object p4, p0, Lcom/android/camera/filmstrip/FilmstripBottomPanelControllerImpl_Factory;->cameraFilmstripUiProvider:Ljavax/inject/Provider;

    .line 40
    iput-object p5, p0, Lcom/android/camera/filmstrip/FilmstripBottomPanelControllerImpl_Factory;->settingsManagerProvider:Ljavax/inject/Provider;

    .line 41
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 12
    .line 1045
    new-instance v0, Lcom/android/camera/filmstrip/FilmstripBottomPanelControllerImpl;

    iget-object v1, p0, Lcom/android/camera/filmstrip/FilmstripBottomPanelControllerImpl_Factory;->activityProvider:Ljavax/inject/Provider;

    .line 1046
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/camera/filmstrip/FilmstripBottomPanelControllerImpl_Factory;->activityLayoutInflaterProvider:Ljavax/inject/Provider;

    .line 1047
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iget-object v3, p0, Lcom/android/camera/filmstrip/FilmstripBottomPanelControllerImpl_Factory;->activityResourcesProvider:Ljavax/inject/Provider;

    .line 1048
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/Resources;

    iget-object v4, p0, Lcom/android/camera/filmstrip/FilmstripBottomPanelControllerImpl_Factory;->cameraFilmstripUiProvider:Ljavax/inject/Provider;

    .line 1049
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/one/v2/viewfinder/ViewfinderModule;

    iget-object v5, p0, Lcom/android/camera/filmstrip/FilmstripBottomPanelControllerImpl_Factory;->settingsManagerProvider:Ljavax/inject/Provider;

    .line 1050
    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/settings/SettingsManager;

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/filmstrip/FilmstripBottomPanelControllerImpl;-><init>(Landroid/app/Activity;Landroid/view/LayoutInflater;Landroid/content/res/Resources;Lcom/android/camera/one/v2/viewfinder/ViewfinderModule;Lcom/android/camera/settings/SettingsManager;)V

    .line 12
    return-object v0
.end method
