.class public interface abstract Lcom/android/camera/storage/detachablefile/DetachableFolder;
.super Ljava/lang/Object;
.source "DetachableFolder.java"


# virtual methods
.method public abstract get()Ljava/io/File;
.end method

.method public abstract getAbsolutePath()Ljava/lang/String;
.end method

.method public abstract subdirectory(Ljava/lang/String;)Lcom/android/camera/storage/detachablefile/DetachableFolder;
.end method

.method public abstract tryEnsureExists()Z
.end method
