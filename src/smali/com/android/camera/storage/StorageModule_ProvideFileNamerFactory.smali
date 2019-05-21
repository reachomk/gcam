.class public final Lcom/android/camera/storage/StorageModule_ProvideFileNamerFactory;
.super Ljava/lang/Object;
.source "StorageModule_ProvideFileNamerFactory.java"

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
.field private final dcimCameraFolderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/storage/detachablefile/DetachableFolder;",
            ">;"
        }
    .end annotation
.end field

.field private final fileNamerManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/storage/FileNamerManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/storage/FileNamerManager;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/storage/detachablefile/DetachableFolder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/android/camera/storage/StorageModule_ProvideFileNamerFactory;->fileNamerManagerProvider:Ljavax/inject/Provider;

    .line 21
    iput-object p2, p0, Lcom/android/camera/storage/StorageModule_ProvideFileNamerFactory;->dcimCameraFolderProvider:Ljavax/inject/Provider;

    .line 22
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 9
    .line 1026
    iget-object v0, p0, Lcom/android/camera/storage/StorageModule_ProvideFileNamerFactory;->fileNamerManagerProvider:Ljavax/inject/Provider;

    .line 1028
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/storage/FileNamerManager;

    iget-object v1, p0, Lcom/android/camera/storage/StorageModule_ProvideFileNamerFactory;->dcimCameraFolderProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/storage/detachablefile/DetachableFolder;

    .line 1027
    invoke-static {v0, v1}, Lcom/android/camera/storage/StorageModule;->provideFileNamer(Lcom/android/camera/storage/FileNamerManager;Lcom/android/camera/storage/detachablefile/DetachableFolder;)Lcom/android/camera/storage/FileNamer;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1026
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/storage/FileNamer;

    .line 9
    return-object v0
.end method
