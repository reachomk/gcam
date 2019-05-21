.class public final Lcom/android/camera/util/permissions/PermissionsStartTask;
.super Ljava/lang/Object;
.source "PermissionsStartTask.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/Initializer;


# instance fields
.field private final permissionsChecker:Lcom/android/camera/util/permissions/PermissionsChecker;


# direct methods
.method public constructor <init>(Lcom/android/camera/util/permissions/PermissionsChecker;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/android/camera/util/permissions/PermissionsStartTask;->permissionsChecker:Lcom/android/camera/util/permissions/PermissionsChecker;

    .line 20
    return-void
.end method


# virtual methods
.method public final start()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/camera/util/permissions/PermissionsStartTask;->permissionsChecker:Lcom/android/camera/util/permissions/PermissionsChecker;

    invoke-interface {v0}, Lcom/android/camera/util/permissions/PermissionsChecker;->checkCriticalPermissions()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
