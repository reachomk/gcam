.class public final Lcom/android/camera/one/OneCameraDependenciesModule_ProvideViewfinderSurfaceFutureFactory;
.super Ljava/lang/Object;
.source "OneCameraDependenciesModule_ProvideViewfinderSurfaceFutureFactory.java"

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
.field private final module$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABQFDPIK6OBDCLP62H35E1IMSP35DPHMIPBJ9LNM8TBCCKTG____:Lcom/google/android/gms/internal/zzahv;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzahv;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/android/camera/one/OneCameraDependenciesModule_ProvideViewfinderSurfaceFutureFactory;->module$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABQFDPIK6OBDCLP62H35E1IMSP35DPHMIPBJ9LNM8TBCCKTG____:Lcom/google/android/gms/internal/zzahv;

    .line 18
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 9
    .line 1022
    iget-object v0, p0, Lcom/android/camera/one/OneCameraDependenciesModule_ProvideViewfinderSurfaceFutureFactory;->module$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABQFDPIK6OBDCLP62H35E1IMSP35DPHMIPBJ9LNM8TBCCKTG____:Lcom/google/android/gms/internal/zzahv;

    .line 1023
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzahv;->provideViewfinderSurfaceFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1022
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 9
    return-object v0
.end method
