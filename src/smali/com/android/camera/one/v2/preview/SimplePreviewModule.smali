.class public Lcom/android/camera/one/v2/preview/SimplePreviewModule;
.super Ljava/lang/Object;
.source "SimplePreviewModule.java"


# instance fields
.field private final cameraFilmstripUi$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCPKMORBJEHP6IS1FELKIUGR1DLIN4OA6D5M6QSRKE9KN0LB97C______:Lcom/android/camera/one/v2/viewfinder/ViewfinderModule;

.field private final filmstripFragment:Lcom/android/camera/filmstrip/FilmstripFragmentImpl;


# direct methods
.method public constructor <init>(Lcom/android/camera/filmstrip/FilmstripFragmentImpl;Lcom/android/camera/one/v2/viewfinder/ViewfinderModule;)V
    .locals 0

    .prologue
    .line 1019
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1020
    iput-object p1, p0, Lcom/android/camera/one/v2/preview/SimplePreviewModule;->filmstripFragment:Lcom/android/camera/filmstrip/FilmstripFragmentImpl;

    .line 1021
    iput-object p2, p0, Lcom/android/camera/one/v2/preview/SimplePreviewModule;->cameraFilmstripUi$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCPKMORBJEHP6IS1FELKIUGR1DLIN4OA6D5M6QSRKE9KN0LB97C______:Lcom/android/camera/one/v2/viewfinder/ViewfinderModule;

    .line 1022
    return-void
.end method


# virtual methods
.method public provideCameraFilmstripUi$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMCQBCDLPN8SJ9E0NNAQ9F8DGMQPBIC536IR3DEDQ74QBGALKJM___()Lcom/android/camera/one/v2/viewfinder/ViewfinderModule;
    .locals 1

    .prologue
    .line 1041
    iget-object v0, p0, Lcom/android/camera/one/v2/preview/SimplePreviewModule;->cameraFilmstripUi$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCPKMORBJEHP6IS1FELKIUGR1DLIN4OA6D5M6QSRKE9KN0LB97C______:Lcom/android/camera/one/v2/viewfinder/ViewfinderModule;

    return-object v0
.end method

.method public providesFilmstripFragment()Lcom/android/camera/filmstrip/FilmstripFragment;
    .locals 1

    .prologue
    .line 1026
    iget-object v0, p0, Lcom/android/camera/one/v2/preview/SimplePreviewModule;->filmstripFragment:Lcom/android/camera/filmstrip/FilmstripFragmentImpl;

    return-object v0
.end method

.method public providesLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 1036
    iget-object v0, p0, Lcom/android/camera/one/v2/preview/SimplePreviewModule;->filmstripFragment:Lcom/android/camera/filmstrip/FilmstripFragmentImpl;

    invoke-virtual {v0}, Lcom/android/camera/filmstrip/FilmstripFragmentImpl;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public providesResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 1031
    iget-object v0, p0, Lcom/android/camera/one/v2/preview/SimplePreviewModule;->filmstripFragment:Lcom/android/camera/filmstrip/FilmstripFragmentImpl;

    invoke-virtual {v0}, Lcom/android/camera/filmstrip/FilmstripFragmentImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method
