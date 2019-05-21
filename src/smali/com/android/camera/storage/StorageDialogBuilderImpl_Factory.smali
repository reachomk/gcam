.class public final Lcom/android/camera/storage/StorageDialogBuilderImpl_Factory;
.super Ljava/lang/Object;
.source "StorageDialogBuilderImpl_Factory.java"

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
.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final mainThreadProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/MainThread;",
            ">;"
        }
    .end annotation
.end field

.field private final storageSpaceCheckerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/storage/StorageSpaceChecker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/MainThread;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/storage/StorageSpaceChecker;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/android/camera/storage/StorageDialogBuilderImpl_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 24
    iput-object p2, p0, Lcom/android/camera/storage/StorageDialogBuilderImpl_Factory;->mainThreadProvider:Ljavax/inject/Provider;

    .line 26
    iput-object p3, p0, Lcom/android/camera/storage/StorageDialogBuilderImpl_Factory;->storageSpaceCheckerProvider:Ljavax/inject/Provider;

    .line 27
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 9
    .line 1031
    new-instance v3, Lcom/android/camera/storage/StorageDialogBuilderImpl;

    iget-object v0, p0, Lcom/android/camera/storage/StorageDialogBuilderImpl_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 1032
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/android/camera/storage/StorageDialogBuilderImpl_Factory;->mainThreadProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/camera/async/MainThread;

    iget-object v2, p0, Lcom/android/camera/storage/StorageDialogBuilderImpl_Factory;->storageSpaceCheckerProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/storage/StorageSpaceChecker;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/camera/storage/StorageDialogBuilderImpl;-><init>(Landroid/content/Context;Lcom/google/android/apps/camera/async/MainThread;Lcom/android/camera/storage/StorageSpaceChecker;)V

    .line 9
    return-object v3
.end method
