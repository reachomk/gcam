.class final Lcom/android/camera/error/ErrorHandlerModules$ActivityErrorHandlerModule$1;
.super Ljava/lang/Object;
.source "ErrorHandlerModules.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/error/ErrorHandlerModules$ActivityErrorHandlerModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic val$activityLifetime:Lcom/android/camera/util/lifetime/ActivityLifetime;

.field private synthetic val$fatalActivityErrorHandler:Lcom/android/camera/error/FatalActivityErrorHandler;

.field private synthetic val$fatalErrorBroadcaster:Lcom/android/camera/error/FatalErrorBroadcaster;

.field private synthetic val$lifecycle:Lcom/google/android/libraries/stitch/lifecycle/Lifecycle;

.field private synthetic val$mainThread:Lcom/google/android/apps/camera/async/MainThread;


# direct methods
.method constructor <init>(Lcom/android/camera/util/lifetime/ActivityLifetime;Lcom/android/camera/error/FatalErrorBroadcaster;Lcom/android/camera/error/FatalActivityErrorHandler;Lcom/google/android/apps/camera/async/MainThread;Lcom/google/android/libraries/stitch/lifecycle/Lifecycle;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/camera/error/ErrorHandlerModules$ActivityErrorHandlerModule$1;->val$activityLifetime:Lcom/android/camera/util/lifetime/ActivityLifetime;

    iput-object p2, p0, Lcom/android/camera/error/ErrorHandlerModules$ActivityErrorHandlerModule$1;->val$fatalErrorBroadcaster:Lcom/android/camera/error/FatalErrorBroadcaster;

    iput-object p3, p0, Lcom/android/camera/error/ErrorHandlerModules$ActivityErrorHandlerModule$1;->val$fatalActivityErrorHandler:Lcom/android/camera/error/FatalActivityErrorHandler;

    iput-object p4, p0, Lcom/android/camera/error/ErrorHandlerModules$ActivityErrorHandlerModule$1;->val$mainThread:Lcom/google/android/apps/camera/async/MainThread;

    iput-object p5, p0, Lcom/android/camera/error/ErrorHandlerModules$ActivityErrorHandlerModule$1;->val$lifecycle:Lcom/google/android/libraries/stitch/lifecycle/Lifecycle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/camera/error/ErrorHandlerModules$ActivityErrorHandlerModule$1;->val$activityLifetime:Lcom/android/camera/util/lifetime/ActivityLifetime;

    .line 51
    invoke-interface {v0}, Lcom/android/camera/util/lifetime/ActivityLifetime;->getInstanceLifetime()Lcom/google/android/apps/camera/async/AddOnlyLifetime;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/error/ErrorHandlerModules$ActivityErrorHandlerModule$1;->val$fatalErrorBroadcaster:Lcom/android/camera/error/FatalErrorBroadcaster;

    iget-object v2, p0, Lcom/android/camera/error/ErrorHandlerModules$ActivityErrorHandlerModule$1;->val$fatalActivityErrorHandler:Lcom/android/camera/error/FatalActivityErrorHandler;

    .line 52
    invoke-virtual {v1, v2}, Lcom/android/camera/error/FatalErrorBroadcaster;->addFatalErrorHandler(Lcom/android/camera/error/FatalErrorHandler;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/camera/async/AddOnlyLifetime;->add(Lcom/google/android/apps/camera/async/SafeCloseable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    .line 53
    iget-object v0, p0, Lcom/android/camera/error/ErrorHandlerModules$ActivityErrorHandlerModule$1;->val$mainThread:Lcom/google/android/apps/camera/async/MainThread;

    iget-object v1, p0, Lcom/android/camera/error/ErrorHandlerModules$ActivityErrorHandlerModule$1;->val$lifecycle:Lcom/google/android/libraries/stitch/lifecycle/Lifecycle;

    iget-object v2, p0, Lcom/android/camera/error/ErrorHandlerModules$ActivityErrorHandlerModule$1;->val$fatalActivityErrorHandler:Lcom/android/camera/error/FatalActivityErrorHandler;

    invoke-static {v0, v1, v2}, Lcom/android/camera/util/lifecycle/Lifecycles;->addObserverOnMainThread$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUOBJF5N66BQDC5KMSL38E9IM2P1R9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FDHKM4SJ1E9KMASPFEDQ6IT33D0NMOQB6CLHNIORCCKNKOQB6CLHNIORCCKTKOORFDKNMERRFCTM6ABR1DPI74RR9CGNMOQB2E9GN4QB5ECNN6T39EHHMGBRCD5J6AORPCDM6ABQCD5J6AORPCDM6AJR2EDIN4TJ5E8TIILG_(Lcom/google/android/apps/camera/async/MainThread;Lcom/google/android/libraries/stitch/lifecycle/Lifecycle;Lcom/android/camera/burst/BurstA11yButtonController$Listener;)V

    .line 54
    return-void
.end method
