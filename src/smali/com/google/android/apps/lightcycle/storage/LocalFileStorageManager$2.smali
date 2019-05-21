.class final Lcom/google/android/apps/lightcycle/storage/LocalFileStorageManager$2;
.super Ljava/lang/Thread;
.source "LocalFileStorageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/lightcycle/storage/LocalFileStorageManager;->addSessionDataAsync(Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;Lcom/google/android/apps/lightcycle/storage/StorageManager$StorageManagerDoneHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/google/android/apps/lightcycle/storage/LocalFileStorageManager;

.field private synthetic val$handler:Lcom/google/android/apps/lightcycle/storage/StorageManager$StorageManagerDoneHandler;

.field private synthetic val$session:Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;


# direct methods
.method constructor <init>(Lcom/google/android/apps/lightcycle/storage/LocalFileStorageManager;Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;Lcom/google/android/apps/lightcycle/storage/StorageManager$StorageManagerDoneHandler;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/storage/LocalFileStorageManager$2;->this$0:Lcom/google/android/apps/lightcycle/storage/LocalFileStorageManager;

    iput-object p2, p0, Lcom/google/android/apps/lightcycle/storage/LocalFileStorageManager$2;->val$session:Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;

    iput-object p3, p0, Lcom/google/android/apps/lightcycle/storage/LocalFileStorageManager$2;->val$handler:Lcom/google/android/apps/lightcycle/storage/StorageManager$StorageManagerDoneHandler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/storage/LocalFileStorageManager$2;->val$session:Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/storage/LocalFileStorageManager;->addSessionData(Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;)V

    .line 139
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/storage/LocalFileStorageManager$2;->val$handler:Lcom/google/android/apps/lightcycle/storage/StorageManager$StorageManagerDoneHandler;

    invoke-interface {v0}, Lcom/google/android/apps/lightcycle/storage/StorageManager$StorageManagerDoneHandler;->onDone()V

    .line 140
    return-void
.end method
