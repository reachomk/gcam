.class public final Lcom/android/camera/error/ErrorHandlerModules_AppErrorHandlerModule_ProvideFatalErrorBroadcasterFactory;
.super Ljava/lang/Object;
.source "ErrorHandlerModules_AppErrorHandlerModule_ProvideFatalErrorBroadcasterFactory.java"

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
.field private final fatalErrorBroadcasterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/error/FatalErrorBroadcaster;",
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
            "Lcom/android/camera/error/FatalErrorBroadcaster;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/android/camera/error/ErrorHandlerModules_AppErrorHandlerModule_ProvideFatalErrorBroadcasterFactory;->fatalErrorBroadcasterProvider:Ljavax/inject/Provider;

    .line 17
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 8
    .line 1021
    iget-object v0, p0, Lcom/android/camera/error/ErrorHandlerModules_AppErrorHandlerModule_ProvideFatalErrorBroadcasterFactory;->fatalErrorBroadcasterProvider:Ljavax/inject/Provider;

    .line 1023
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/error/FatalErrorBroadcaster;

    .line 1022
    invoke-static {v0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->provideFatalErrorBroadcaster(Lcom/android/camera/error/FatalErrorBroadcaster;)Lcom/android/camera/error/FatalErrorHandler;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1021
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/error/FatalErrorHandler;

    .line 8
    return-object v0
.end method
