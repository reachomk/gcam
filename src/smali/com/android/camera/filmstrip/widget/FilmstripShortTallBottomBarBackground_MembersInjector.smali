.class public final Lcom/android/camera/filmstrip/widget/FilmstripShortTallBottomBarBackground_MembersInjector;
.super Ljava/lang/Object;
.source "FilmstripShortTallBottomBarBackground_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector",
        "<",
        "Lcom/android/camera/filmstrip/widget/FilmstripShortTallBottomBarBackground;",
        ">;"
    }
.end annotation


# instance fields
.field private final apiHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/ApiHelper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/ApiHelper;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/android/camera/filmstrip/widget/FilmstripShortTallBottomBarBackground_MembersInjector;->apiHelperProvider:Ljavax/inject/Provider;

    .line 17
    return-void
.end method


# virtual methods
.method public final synthetic injectMembers(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 8
    check-cast p1, Lcom/android/camera/filmstrip/widget/FilmstripShortTallBottomBarBackground;

    .line 1026
    if-nez p1, :cond_0

    .line 1027
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot inject members into a null reference"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1029
    :cond_0
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripShortTallBottomBarBackground_MembersInjector;->apiHelperProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/util/ApiHelper;

    iput-object v0, p1, Lcom/android/camera/filmstrip/widget/FilmstripShortTallBottomBarBackground;->apiHelper:Lcom/android/camera/util/ApiHelper;

    .line 8
    return-void
.end method
