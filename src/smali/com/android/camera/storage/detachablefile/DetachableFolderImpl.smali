.class public final Lcom/android/camera/storage/detachablefile/DetachableFolderImpl;
.super Ljava/lang/Object;
.source "DetachableFolderImpl.java"

# interfaces
.implements Lcom/android/camera/storage/detachablefile/DetachableFolder;


# instance fields
.field private final file:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    iput-object v0, p0, Lcom/android/camera/storage/detachablefile/DetachableFolderImpl;->file:Ljava/io/File;

    .line 23
    return-void
.end method


# virtual methods
.method public final get()Ljava/io/File;
    .locals 4

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/android/camera/storage/detachablefile/DetachableFolderImpl;->tryEnsureExists()Z

    move-result v0

    iget-object v1, p0, Lcom/android/camera/storage/detachablefile/DetachableFolderImpl;->file:Ljava/io/File;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2c

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Folder doesn\'t exist and cannot be created: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(ZLjava/lang/Object;)V

    .line 29
    iget-object v0, p0, Lcom/android/camera/storage/detachablefile/DetachableFolderImpl;->file:Ljava/io/File;

    return-object v0
.end method

.method public final getAbsolutePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/camera/storage/detachablefile/DetachableFolderImpl;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final subdirectory(Ljava/lang/String;)Lcom/android/camera/storage/detachablefile/DetachableFolder;
    .locals 3

    .prologue
    .line 46
    new-instance v0, Lcom/android/camera/storage/detachablefile/DetachableFolderImpl;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/camera/storage/detachablefile/DetachableFolderImpl;->file:Ljava/io/File;

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/android/camera/storage/detachablefile/DetachableFolderImpl;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/camera/storage/detachablefile/DetachableFolderImpl;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final tryEnsureExists()Z
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/camera/storage/detachablefile/DetachableFolderImpl;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/storage/detachablefile/DetachableFolderImpl;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
