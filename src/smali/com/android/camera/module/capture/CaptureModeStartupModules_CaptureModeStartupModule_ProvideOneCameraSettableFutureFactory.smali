.class public final Lcom/android/camera/module/capture/CaptureModeStartupModules_CaptureModeStartupModule_ProvideOneCameraSettableFutureFactory;
.super Ljava/lang/Object;
.source "CaptureModeStartupModules_CaptureModeStartupModule_ProvideOneCameraSettableFutureFactory.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/camera/module/capture/CaptureModeStartupModules_CaptureModeStartupModule_ProvideOneCameraSettableFutureFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/android/camera/module/capture/CaptureModeStartupModules_CaptureModeStartupModule_ProvideOneCameraSettableFutureFactory;

    invoke-direct {v0}, Lcom/android/camera/module/capture/CaptureModeStartupModules_CaptureModeStartupModule_ProvideOneCameraSettableFutureFactory;-><init>()V

    sput-object v0, Lcom/android/camera/module/capture/CaptureModeStartupModules_CaptureModeStartupModule_ProvideOneCameraSettableFutureFactory;->INSTANCE:Lcom/android/camera/module/capture/CaptureModeStartupModules_CaptureModeStartupModule_ProvideOneCameraSettableFutureFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavax/inject/Provider;"
        }
    .end annotation

    .prologue
    .line 26
    sget-object v0, Lcom/android/camera/module/capture/CaptureModeStartupModules_CaptureModeStartupModule_ProvideOneCameraSettableFutureFactory;->INSTANCE:Lcom/android/camera/module/capture/CaptureModeStartupModules_CaptureModeStartupModule_ProvideOneCameraSettableFutureFactory;

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1021
    invoke-static {}, Lcom/android/camera/util/activity/ActivityUtilModule;->provideOneCameraSettableFuture()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1020
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/SettableFuture;

    .line 9
    return-object v0
.end method
