.class public final Lcom/android/camera/activity/main/CameraActivityModule_ProvidePreInitLifetimeFactory;
.super Ljava/lang/Object;
.source "CameraActivityModule_ProvidePreInitLifetimeFactory.java"

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
.field private final module:Lcom/android/camera/activity/main/CameraActivityModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/activity/main/CameraActivityModule;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/android/camera/activity/main/CameraActivityModule_ProvidePreInitLifetimeFactory;->module:Lcom/android/camera/activity/main/CameraActivityModule;

    .line 15
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 8
    .line 1069
    new-instance v0, Lcom/google/android/apps/camera/async/Lifetime;

    invoke-direct {v0}, Lcom/google/android/apps/camera/async/Lifetime;-><init>()V

    .line 1020
    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1019
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/async/Lifetime;

    .line 8
    return-object v0
.end method
