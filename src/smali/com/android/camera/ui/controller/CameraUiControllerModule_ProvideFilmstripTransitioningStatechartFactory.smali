.class public final Lcom/android/camera/ui/controller/CameraUiControllerModule_ProvideFilmstripTransitioningStatechartFactory;
.super Ljava/lang/Object;
.source "CameraUiControllerModule_ProvideFilmstripTransitioningStatechartFactory.java"

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
.field private final filmstripUiStatechartProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/filmstrip/ui/FilmstripUiStatechart;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/android/camera/ui/controller/CameraUiControllerModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/controller/CameraUiControllerModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/ui/controller/CameraUiControllerModule;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/filmstrip/ui/FilmstripUiStatechart;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/android/camera/ui/controller/CameraUiControllerModule_ProvideFilmstripTransitioningStatechartFactory;->module:Lcom/android/camera/ui/controller/CameraUiControllerModule;

    .line 23
    iput-object p2, p0, Lcom/android/camera/ui/controller/CameraUiControllerModule_ProvideFilmstripTransitioningStatechartFactory;->filmstripUiStatechartProvider:Ljavax/inject/Provider;

    .line 24
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 10
    .line 1028
    iget-object v0, p0, Lcom/android/camera/ui/controller/CameraUiControllerModule_ProvideFilmstripTransitioningStatechartFactory;->filmstripUiStatechartProvider:Ljavax/inject/Provider;

    .line 1029
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/filmstrip/ui/FilmstripUiStatechart;

    .line 1127
    new-instance v1, Lcom/android/camera/filmstrip/ui/GeneratedFilmstripTransitioningStatechart;

    invoke-direct {v1, v0}, Lcom/android/camera/filmstrip/ui/GeneratedFilmstripTransitioningStatechart;-><init>(Lcom/android/camera/filmstrip/ui/FilmstripUiStatechart;)V

    .line 1029
    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 1028
    invoke-static {v1, v0}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/filmstrip/ui/FilmstripTransitioningStatechart;

    .line 10
    return-object v0
.end method
