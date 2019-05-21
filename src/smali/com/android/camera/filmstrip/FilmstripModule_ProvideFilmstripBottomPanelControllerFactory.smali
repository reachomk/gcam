.class public final Lcom/android/camera/filmstrip/FilmstripModule_ProvideFilmstripBottomPanelControllerFactory;
.super Ljava/lang/Object;
.source "FilmstripModule_ProvideFilmstripBottomPanelControllerFactory.java"

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
            "Lcom/android/camera/filmstrip/FilmstripBottomPanelControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final module$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCPKMORBJEHP6IS1F8PKMORBJEHP6IS2DDTI7AR357C______:Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusZslDecider;


# direct methods
.method public constructor <init>(Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusZslDecider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusZslDecider;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/filmstrip/FilmstripBottomPanelControllerImpl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/android/camera/filmstrip/FilmstripModule_ProvideFilmstripBottomPanelControllerFactory;->module$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCPKMORBJEHP6IS1F8PKMORBJEHP6IS2DDTI7AR357C______:Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusZslDecider;

    .line 20
    iput-object p2, p0, Lcom/android/camera/filmstrip/FilmstripModule_ProvideFilmstripBottomPanelControllerFactory;->implProvider:Ljavax/inject/Provider;

    .line 21
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 8
    .line 1025
    iget-object v0, p0, Lcom/android/camera/filmstrip/FilmstripModule_ProvideFilmstripBottomPanelControllerFactory;->implProvider:Ljavax/inject/Provider;

    .line 1026
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/filmstrip/FilmstripBottomPanelControllerImpl;

    invoke-static {v0}, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusZslDecider;->provideFilmstripBottomPanelController(Lcom/android/camera/filmstrip/FilmstripBottomPanelControllerImpl;)Lcom/android/camera/filmstrip/FilmstripBottomPanelController;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1025
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/filmstrip/FilmstripBottomPanelController;

    .line 8
    return-object v0
.end method
