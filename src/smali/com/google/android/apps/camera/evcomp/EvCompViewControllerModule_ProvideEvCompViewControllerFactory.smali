.class public final Lcom/google/android/apps/camera/evcomp/EvCompViewControllerModule_ProvideEvCompViewControllerFactory;
.super Ljava/lang/Object;
.source "EvCompViewControllerModule_ProvideEvCompViewControllerFactory.java"

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
.field private final module:Lcom/google/android/apps/camera/evcomp/EvCompViewControllerModule;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/evcomp/EvCompViewControllerModule;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/google/android/apps/camera/evcomp/EvCompViewControllerModule_ProvideEvCompViewControllerFactory;->module:Lcom/google/android/apps/camera/evcomp/EvCompViewControllerModule;

    .line 16
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 7
    .line 2016
    new-instance v0, Lcom/google/android/apps/camera/evcomp/EvCompViewController;

    invoke-direct {v0}, Lcom/google/android/apps/camera/evcomp/EvCompViewController;-><init>()V

    .line 1021
    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1020
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/evcomp/EvCompViewController;

    .line 7
    return-object v0
.end method