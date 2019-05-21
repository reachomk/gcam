.class public final Lcom/android/camera/module/ModuleManagerImpl;
.super Ljava/lang/Object;
.source "ModuleManagerImpl.java"

# interfaces
.implements Lcom/android/camera/module/ModuleManager;


# instance fields
.field private defaultModuleId:I

.field private final registeredModuleAgents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/camera/module/ModuleManager$ModuleAgent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-string v0, "ModuleManagerImpl"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/android/camera/module/ModuleManager$ModuleAgent;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/ModuleManagerImpl;->registeredModuleAgents:Landroid/util/SparseArray;

    .line 15
    iput v4, p0, Lcom/android/camera/module/ModuleManagerImpl;->defaultModuleId:I

    .line 18
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/ModuleManager$ModuleAgent;

    .line 1024
    if-nez v0, :cond_0

    .line 1025
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Registering a null ModuleAgent."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1027
    :cond_0
    invoke-interface {v0}, Lcom/android/camera/module/ModuleManager$ModuleAgent;->moduleConfig$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMQRR4ELM6ABQDDTI7AR359LGMSOB7CLP28JBFCHQMOPA3DTN6CQB77C______()Lcom/android/camera/ui/DetailsDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/DetailsDialog;->getModuleId()I

    move-result v2

    .line 1028
    if-ne v2, v4, :cond_1

    .line 1029
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ModuleManager: The module ID can not be MODULE_INDEX_NONE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1032
    :cond_1
    iget-object v3, p0, Lcom/android/camera/module/ModuleManagerImpl;->registeredModuleAgents:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1033
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v3, 0x2b

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Module ID is registered already:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1035
    :cond_2
    iget-object v3, p0, Lcom/android/camera/module/ModuleManagerImpl;->registeredModuleAgents:Landroid/util/SparseArray;

    invoke-virtual {v3, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 21
    :cond_3
    return-void
.end method


# virtual methods
.method public final getModuleAgent(I)Lcom/android/camera/module/ModuleManager$ModuleAgent;
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/camera/module/ModuleManagerImpl;->registeredModuleAgents:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/ModuleManager$ModuleAgent;

    .line 59
    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/android/camera/module/ModuleManagerImpl;->registeredModuleAgents:Landroid/util/SparseArray;

    iget v1, p0, Lcom/android/camera/module/ModuleManagerImpl;->defaultModuleId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/ModuleManager$ModuleAgent;

    .line 62
    :cond_0
    return-object v0
.end method

.method public final getRegisteredModuleAgents()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/module/ModuleManager$ModuleAgent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 41
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/android/camera/module/ModuleManagerImpl;->registeredModuleAgents:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/android/camera/module/ModuleManagerImpl;->registeredModuleAgents:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/ModuleManager$ModuleAgent;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 44
    :cond_0
    return-object v2
.end method

.method public final setDefaultModuleIndex(I)Z
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/camera/module/ModuleManagerImpl;->registeredModuleAgents:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50
    iput p1, p0, Lcom/android/camera/module/ModuleManagerImpl;->defaultModuleId:I

    .line 51
    const/4 v0, 0x1

    .line 53
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
