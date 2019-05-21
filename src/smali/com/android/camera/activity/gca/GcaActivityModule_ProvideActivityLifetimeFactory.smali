.class public final Lcom/android/camera/activity/gca/GcaActivityModule_ProvideActivityLifetimeFactory;
.super Ljava/lang/Object;
.source "GcaActivityModule_ProvideActivityLifetimeFactory.java"

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
.field private final module:Lcom/android/camera/activity/gca/GcaActivityModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/activity/gca/GcaActivityModule;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/android/camera/activity/gca/GcaActivityModule_ProvideActivityLifetimeFactory;->module:Lcom/android/camera/activity/gca/GcaActivityModule;

    .line 16
    return-void
.end method

.method public static create$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TGM6T39EPKN8U9FCTHM2BQ7CDGK2ORKD5R6IT3P9LNM8TBCCKTIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Lcom/android/camera/activity/gca/GcaActivityModule;)Ljavax/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/activity/gca/GcaActivityModule;",
            ")",
            "Ljavax/inject/Provider;"
        }
    .end annotation

    .prologue
    .line 26
    new-instance v0, Lcom/android/camera/activity/gca/GcaActivityModule_ProvideActivityLifetimeFactory;

    invoke-direct {v0, p0}, Lcom/android/camera/activity/gca/GcaActivityModule_ProvideActivityLifetimeFactory;-><init>(Lcom/android/camera/activity/gca/GcaActivityModule;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 8
    .line 1020
    iget-object v0, p0, Lcom/android/camera/activity/gca/GcaActivityModule_ProvideActivityLifetimeFactory;->module:Lcom/android/camera/activity/gca/GcaActivityModule;

    .line 1021
    invoke-virtual {v0}, Lcom/android/camera/activity/gca/GcaActivityModule;->provideActivityLifetime()Lcom/android/camera/util/lifetime/ActivityLifetime;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1020
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/util/lifetime/ActivityLifetime;

    .line 8
    return-object v0
.end method
