.class Lcom/android/server/audio/AudioService$AudioHandler;
.super Landroid/os/Handler;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/audio/AudioService$AudioHandler;Landroid/media/MediaPlayer;)V
    .registers 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$AudioHandler;->cleanupPlayer(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method private constructor <init>(Lcom/android/server/audio/AudioService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 4685
    iput-object p1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$AudioHandler;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/audio/AudioService;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$AudioHandler;-><init>(Lcom/android/server/audio/AudioService;)V

    return-void
.end method

.method private cleanupPlayer(Landroid/media/MediaPlayer;)V
    .registers 6
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 4976
    if-eqz p1, :cond_8

    .line 4978
    :try_start_2
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 4979
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_8} :catch_9

    .line 4975
    :cond_8
    :goto_8
    return-void

    .line 4980
    :catch_9
    move-exception v0

    .line 4981
    .local v0, "ex":Ljava/lang/IllegalStateException;
    const-string/jumbo v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "MediaPlayer IllegalStateException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8
.end method

.method private onLoadSoundEffects()Z
    .registers 19

    .prologue
    .line 4758
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v13}, Lcom/android/server/audio/AudioService;->-get35(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v14

    monitor-enter v14

    .line 4759
    :try_start_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v13}, Lcom/android/server/audio/AudioService;->-get42(Lcom/android/server/audio/AudioService;)Z

    move-result v13

    if-nez v13, :cond_1f

    .line 4760
    const-string/jumbo v13, "AudioService"

    const-string/jumbo v15, "onLoadSoundEffects() called before boot complete"

    invoke-static {v13, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_102

    .line 4761
    const/4 v13, 0x0

    monitor-exit v14

    return v13

    .line 4764
    :cond_1f
    :try_start_1f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v13}, Lcom/android/server/audio/AudioService;->-get36(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_102

    move-result-object v13

    if-eqz v13, :cond_2c

    .line 4765
    const/4 v13, 0x1

    monitor-exit v14

    return v13

    .line 4768
    :cond_2c
    :try_start_2c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v13}, Lcom/android/server/audio/AudioService;->-wrap18(Lcom/android/server/audio/AudioService;)V

    .line 4770
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    new-instance v15, Landroid/media/SoundPool$Builder;

    invoke-direct {v15}, Landroid/media/SoundPool$Builder;-><init>()V

    .line 4771
    const/16 v16, 0x4

    .line 4770
    invoke-virtual/range {v15 .. v16}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v15

    .line 4772
    new-instance v16, Landroid/media/AudioAttributes$Builder;

    invoke-direct/range {v16 .. v16}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 4773
    const/16 v17, 0xd

    .line 4772
    invoke-virtual/range {v16 .. v17}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v16

    .line 4774
    const/16 v17, 0x4

    .line 4772
    invoke-virtual/range {v16 .. v17}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v16

    .line 4770
    invoke-virtual/range {v15 .. v16}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v15

    invoke-virtual {v15}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v15

    invoke-static {v13, v15}, Lcom/android/server/audio/AudioService;->-set13(Lcom/android/server/audio/AudioService;Landroid/media/SoundPool;)Landroid/media/SoundPool;

    .line 4777
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v15, 0x0

    invoke-static {v13, v15}, Lcom/android/server/audio/AudioService;->-set14(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$SoundPoolCallback;)Lcom/android/server/audio/AudioService$SoundPoolCallback;

    .line 4778
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    new-instance v15, Lcom/android/server/audio/AudioService$SoundPoolListenerThread;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    move-object/from16 v16, v0

    invoke-direct/range {v15 .. v16}, Lcom/android/server/audio/AudioService$SoundPoolListenerThread;-><init>(Lcom/android/server/audio/AudioService;)V

    invoke-static {v13, v15}, Lcom/android/server/audio/AudioService;->-set15(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$SoundPoolListenerThread;)Lcom/android/server/audio/AudioService$SoundPoolListenerThread;

    .line 4779
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v13}, Lcom/android/server/audio/AudioService;->-get38(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$SoundPoolListenerThread;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/server/audio/AudioService$SoundPoolListenerThread;->start()V

    .line 4780
    const/4 v2, 0x3

    .local v2, "attempts":I
    move v3, v2

    .line 4781
    .end local v2    # "attempts":I
    .local v3, "attempts":I
    :goto_89
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v13}, Lcom/android/server/audio/AudioService;->-get37(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$SoundPoolCallback;
    :try_end_90
    .catchall {:try_start_2c .. :try_end_90} :catchall_102

    move-result-object v13

    if-nez v13, :cond_a8

    add-int/lit8 v2, v3, -0x1

    .end local v3    # "attempts":I
    .restart local v2    # "attempts":I
    if-lez v3, :cond_a9

    .line 4784
    :try_start_97
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v13}, Lcom/android/server/audio/AudioService;->-get35(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v13

    const-wide/16 v16, 0x1388

    move-wide/from16 v0, v16

    invoke-virtual {v13, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_a6
    .catch Ljava/lang/InterruptedException; {:try_start_97 .. :try_end_a6} :catch_f7
    .catchall {:try_start_97 .. :try_end_a6} :catchall_102

    :goto_a6
    move v3, v2

    .end local v2    # "attempts":I
    .restart local v3    # "attempts":I
    goto :goto_89

    :cond_a8
    move v2, v3

    .line 4790
    .end local v3    # "attempts":I
    .restart local v2    # "attempts":I
    :cond_a9
    :try_start_a9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v13}, Lcom/android/server/audio/AudioService;->-get37(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$SoundPoolCallback;

    move-result-object v13

    if-nez v13, :cond_105

    .line 4791
    const-string/jumbo v13, "AudioService"

    const-string/jumbo v15, "onLoadSoundEffects() SoundPool listener or thread creation error"

    invoke-static {v13, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4792
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v13}, Lcom/android/server/audio/AudioService;->-get39(Lcom/android/server/audio/AudioService;)Landroid/os/Looper;

    move-result-object v13

    if-eqz v13, :cond_d9

    .line 4793
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v13}, Lcom/android/server/audio/AudioService;->-get39(Lcom/android/server/audio/AudioService;)Landroid/os/Looper;

    move-result-object v13

    invoke-virtual {v13}, Landroid/os/Looper;->quit()V

    .line 4794
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v15, 0x0

    invoke-static {v13, v15}, Lcom/android/server/audio/AudioService;->-set16(Lcom/android/server/audio/AudioService;Landroid/os/Looper;)Landroid/os/Looper;

    .line 4796
    :cond_d9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v15, 0x0

    invoke-static {v13, v15}, Lcom/android/server/audio/AudioService;->-set15(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$SoundPoolListenerThread;)Lcom/android/server/audio/AudioService$SoundPoolListenerThread;

    .line 4797
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v13}, Lcom/android/server/audio/AudioService;->-get36(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    move-result-object v13

    invoke-virtual {v13}, Landroid/media/SoundPool;->release()V

    .line 4798
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v15, 0x0

    invoke-static {v13, v15}, Lcom/android/server/audio/AudioService;->-set13(Lcom/android/server/audio/AudioService;Landroid/media/SoundPool;)Landroid/media/SoundPool;
    :try_end_f4
    .catchall {:try_start_a9 .. :try_end_f4} :catchall_102

    .line 4799
    const/4 v13, 0x0

    monitor-exit v14

    return v13

    .line 4785
    :catch_f7
    move-exception v4

    .line 4786
    .local v4, "e":Ljava/lang/InterruptedException;
    :try_start_f8
    const-string/jumbo v13, "AudioService"

    const-string/jumbo v15, "Interrupted while waiting sound pool listener thread."

    invoke-static {v13, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_101
    .catchall {:try_start_f8 .. :try_end_101} :catchall_102

    goto :goto_a6

    .line 4758
    .end local v2    # "attempts":I
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :catchall_102
    move-exception v13

    monitor-exit v14

    throw v13

    .line 4807
    .restart local v2    # "attempts":I
    :cond_105
    :try_start_105
    invoke-static {}, Lcom/android/server/audio/AudioService;->-get2()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    new-array v9, v13, [I

    .line 4808
    .local v9, "poolId":[I
    const/4 v6, 0x0

    .local v6, "fileIdx":I
    :goto_110
    invoke-static {}, Lcom/android/server/audio/AudioService;->-get2()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-ge v6, v13, :cond_120

    .line 4809
    const/4 v13, -0x1

    aput v13, v9, v6

    .line 4808
    add-int/lit8 v6, v6, 0x1

    goto :goto_110

    .line 4817
    :cond_120
    const/4 v8, 0x0

    .line 4818
    .local v8, "numSamples":I
    const/4 v5, 0x0

    .local v5, "effect":I
    :goto_122
    const/16 v13, 0xa

    if-ge v5, v13, :cond_22f

    .line 4820
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v13}, Lcom/android/server/audio/AudioService;->-get3(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v13

    aget-object v13, v13, v5

    const/4 v15, 0x1

    aget v13, v13, v15

    if-nez v13, :cond_138

    .line 4818
    :goto_135
    add-int/lit8 v5, v5, 0x1

    goto :goto_122

    .line 4823
    :cond_138
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v13}, Lcom/android/server/audio/AudioService;->-get3(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v13

    aget-object v13, v13, v5

    const/4 v15, 0x0

    aget v13, v13, v15

    aget v13, v9, v13

    const/4 v15, -0x1

    if-ne v13, v15, :cond_20f

    .line 4824
    const-string/jumbo v7, ""

    .line 4825
    .local v7, "filePath":Ljava/lang/String;
    new-instance v12, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "/data/system/theme/audio/ui/"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 4826
    invoke-static {}, Lcom/android/server/audio/AudioService;->-get2()Ljava/util/List;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/server/audio/AudioService;->-get3(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v16

    aget-object v16, v16, v5

    const/16 v17, 0x0

    aget v16, v16, v17

    move/from16 v0, v16

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 4825
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4827
    .local v12, "theme_file":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_1b6

    .line 4828
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    .line 4834
    :goto_18c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v13}, Lcom/android/server/audio/AudioService;->-get36(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    move-result-object v13

    const/4 v15, 0x0

    invoke-virtual {v13, v7, v15}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v10

    .line 4835
    .local v10, "sampleId":I
    if-gtz v10, :cond_1ef

    .line 4836
    const-string/jumbo v13, "AudioService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Soundpool could not load file: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_135

    .line 4830
    .end local v10    # "sampleId":I
    :cond_1b6
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 4831
    const-string/jumbo v15, "/media/audio/ui/"

    .line 4830
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 4832
    invoke-static {}, Lcom/android/server/audio/AudioService;->-get2()Ljava/util/List;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/server/audio/AudioService;->-get3(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v16

    aget-object v16, v16, v5

    const/16 v17, 0x0

    aget v16, v16, v17

    move/from16 v0, v16

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 4830
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_18c

    .line 4838
    .restart local v10    # "sampleId":I
    :cond_1ef
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v13}, Lcom/android/server/audio/AudioService;->-get3(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v13

    aget-object v13, v13, v5

    const/4 v15, 0x1

    aput v10, v13, v15

    .line 4839
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v13}, Lcom/android/server/audio/AudioService;->-get3(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v13

    aget-object v13, v13, v5

    const/4 v15, 0x0

    aget v13, v13, v15

    aput v10, v9, v13

    .line 4840
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_135

    .line 4843
    .end local v7    # "filePath":Ljava/lang/String;
    .end local v10    # "sampleId":I
    .end local v12    # "theme_file":Ljava/io/File;
    :cond_20f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v13}, Lcom/android/server/audio/AudioService;->-get3(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v13

    aget-object v13, v13, v5

    .line 4844
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v15}, Lcom/android/server/audio/AudioService;->-get3(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v15

    aget-object v15, v15, v5

    const/16 v16, 0x0

    aget v15, v15, v16

    aget v15, v9, v15

    .line 4843
    const/16 v16, 0x1

    aput v15, v13, v16

    goto/16 :goto_135

    .line 4848
    :cond_22f
    if-lez v8, :cond_2dd

    .line 4849
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v13}, Lcom/android/server/audio/AudioService;->-get37(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$SoundPoolCallback;

    move-result-object v13

    invoke-virtual {v13, v9}, Lcom/android/server/audio/AudioService$SoundPoolCallback;->setSamples([I)V
    :try_end_23c
    .catchall {:try_start_105 .. :try_end_23c} :catchall_102

    .line 4851
    const/4 v2, 0x3

    .line 4852
    const/4 v11, 0x1

    .local v11, "status":I
    move v3, v2

    .line 4853
    .end local v2    # "attempts":I
    .restart local v3    # "attempts":I
    :goto_23f
    const/4 v13, 0x1

    if-ne v11, v13, :cond_263

    add-int/lit8 v2, v3, -0x1

    .end local v3    # "attempts":I
    .restart local v2    # "attempts":I
    if-lez v3, :cond_264

    .line 4855
    :try_start_246
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v13}, Lcom/android/server/audio/AudioService;->-get35(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v13

    const-wide/16 v16, 0x1388

    move-wide/from16 v0, v16

    invoke-virtual {v13, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 4856
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v13}, Lcom/android/server/audio/AudioService;->-get37(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$SoundPoolCallback;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/server/audio/AudioService$SoundPoolCallback;->status()I
    :try_end_260
    .catch Ljava/lang/InterruptedException; {:try_start_246 .. :try_end_260} :catch_2d2
    .catchall {:try_start_246 .. :try_end_260} :catchall_102

    move-result v11

    :goto_261
    move v3, v2

    .end local v2    # "attempts":I
    .restart local v3    # "attempts":I
    goto :goto_23f

    :cond_263
    move v2, v3

    .line 4865
    .end local v3    # "attempts":I
    .restart local v2    # "attempts":I
    :cond_264
    :goto_264
    :try_start_264
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v13}, Lcom/android/server/audio/AudioService;->-get39(Lcom/android/server/audio/AudioService;)Landroid/os/Looper;

    move-result-object v13

    if-eqz v13, :cond_281

    .line 4866
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v13}, Lcom/android/server/audio/AudioService;->-get39(Lcom/android/server/audio/AudioService;)Landroid/os/Looper;

    move-result-object v13

    invoke-virtual {v13}, Landroid/os/Looper;->quit()V

    .line 4867
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v15, 0x0

    invoke-static {v13, v15}, Lcom/android/server/audio/AudioService;->-set16(Lcom/android/server/audio/AudioService;Landroid/os/Looper;)Landroid/os/Looper;

    .line 4869
    :cond_281
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v15, 0x0

    invoke-static {v13, v15}, Lcom/android/server/audio/AudioService;->-set15(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$SoundPoolListenerThread;)Lcom/android/server/audio/AudioService$SoundPoolListenerThread;

    .line 4870
    if-eqz v11, :cond_2f2

    .line 4871
    const-string/jumbo v13, "AudioService"

    .line 4872
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "onLoadSoundEffects(), Error "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " while loading samples"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 4871
    invoke-static {v13, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4873
    const/4 v5, 0x0

    :goto_2ad
    const/16 v13, 0xa

    if-ge v5, v13, :cond_2df

    .line 4874
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v13}, Lcom/android/server/audio/AudioService;->-get3(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v13

    aget-object v13, v13, v5

    const/4 v15, 0x1

    aget v13, v13, v15

    if-lez v13, :cond_2cf

    .line 4875
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v13}, Lcom/android/server/audio/AudioService;->-get3(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v13

    aget-object v13, v13, v5

    const/4 v15, -0x1

    const/16 v16, 0x1

    aput v15, v13, v16

    .line 4873
    :cond_2cf
    add-int/lit8 v5, v5, 0x1

    goto :goto_2ad

    .line 4857
    :catch_2d2
    move-exception v4

    .line 4858
    .restart local v4    # "e":Ljava/lang/InterruptedException;
    const-string/jumbo v13, "AudioService"

    const-string/jumbo v15, "Interrupted while waiting sound pool callback."

    invoke-static {v13, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_261

    .line 4862
    .end local v4    # "e":Ljava/lang/InterruptedException;
    .end local v11    # "status":I
    :cond_2dd
    const/4 v11, -0x1

    .restart local v11    # "status":I
    goto :goto_264

    .line 4879
    :cond_2df
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v13}, Lcom/android/server/audio/AudioService;->-get36(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    move-result-object v13

    invoke-virtual {v13}, Landroid/media/SoundPool;->release()V

    .line 4880
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v15, 0x0

    invoke-static {v13, v15}, Lcom/android/server/audio/AudioService;->-set13(Lcom/android/server/audio/AudioService;Landroid/media/SoundPool;)Landroid/media/SoundPool;
    :try_end_2f2
    .catchall {:try_start_264 .. :try_end_2f2} :catchall_102

    :cond_2f2
    monitor-exit v14

    .line 4883
    if-nez v11, :cond_2f7

    const/4 v13, 0x1

    :goto_2f6
    return v13

    :cond_2f7
    const/4 v13, 0x0

    goto :goto_2f6
.end method

.method private onPersistSafeVolumeState(I)V
    .registers 4
    .param p1, "state"    # I

    .prologue
    .line 4993
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get16(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    .line 4994
    const-string/jumbo v1, "audio_safe_volume_state"

    .line 4993
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4992
    return-void
.end method

.method private onPlaySoundEffect(II)V
    .registers 19
    .param p1, "effectType"    # I
    .param p2, "volume"    # I

    .prologue
    .line 4918
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get35(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v15

    monitor-enter v15

    .line 4920
    :try_start_9
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService$AudioHandler;->onLoadSoundEffects()Z

    .line 4922
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get36(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_e4

    move-result-object v2

    if-nez v2, :cond_18

    monitor-exit v15

    .line 4923
    return-void

    .line 4927
    :cond_18
    if-gez p2, :cond_58

    .line 4928
    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    :try_start_1c
    invoke-static {}, Lcom/android/server/audio/AudioService;->-get46()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x41a00000    # 20.0f

    div-float/2addr v5, v6

    float-to-double v6, v5

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v4, v2

    .line 4933
    .local v4, "volFloat":F
    :goto_2a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get3(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v2

    aget-object v2, v2, p1

    const/4 v3, 0x1

    aget v2, v2, v3

    if-lez v2, :cond_60

    .line 4934
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get36(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-get3(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v3

    aget-object v3, v3, p1

    const/4 v5, 0x1

    aget v3, v3, v5

    .line 4935
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    move v5, v4

    .line 4934
    invoke-virtual/range {v2 .. v8}, Landroid/media/SoundPool;->play(IFFIIF)I
    :try_end_56
    .catchall {:try_start_1c .. :try_end_56} :catchall_e4

    :goto_56
    monitor-exit v15

    .line 4917
    return-void

    .line 4930
    .end local v4    # "volFloat":F
    :cond_58
    move/from16 v0, p2

    int-to-float v2, v0

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float v4, v2, v3

    .restart local v4    # "volFloat":F
    goto :goto_2a

    .line 4937
    :cond_60
    :try_start_60
    new-instance v13, Landroid/media/MediaPlayer;

    invoke-direct {v13}, Landroid/media/MediaPlayer;-><init>()V
    :try_end_65
    .catchall {:try_start_60 .. :try_end_65} :catchall_e4

    .line 4939
    .local v13, "mediaPlayer":Landroid/media/MediaPlayer;
    :try_start_65
    const-string/jumbo v12, ""

    .line 4940
    .local v12, "filePath":Ljava/lang/String;
    new-instance v14, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "/data/system/theme/audio/ui/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4941
    invoke-static {}, Lcom/android/server/audio/AudioService;->-get2()Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5}, Lcom/android/server/audio/AudioService;->-get3(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v5

    aget-object v5, v5, p1

    const/4 v6, 0x0

    aget v5, v5, v6

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4940
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v14, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4942
    .local v14, "theme_file":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_e7

    .line 4943
    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    .line 4948
    :goto_a2
    invoke-virtual {v13, v12}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 4949
    const/4 v2, 0x1

    invoke-virtual {v13, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 4950
    invoke-virtual {v13}, Landroid/media/MediaPlayer;->prepare()V

    .line 4951
    invoke-virtual {v13, v4}, Landroid/media/MediaPlayer;->setVolume(F)V

    .line 4952
    new-instance v2, Lcom/android/server/audio/AudioService$AudioHandler$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/audio/AudioService$AudioHandler$1;-><init>(Lcom/android/server/audio/AudioService$AudioHandler;)V

    invoke-virtual {v13, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 4957
    new-instance v2, Lcom/android/server/audio/AudioService$AudioHandler$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/audio/AudioService$AudioHandler$2;-><init>(Lcom/android/server/audio/AudioService$AudioHandler;)V

    invoke-virtual {v13, v2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 4963
    invoke-virtual {v13}, Landroid/media/MediaPlayer;->start()V
    :try_end_c6
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_c6} :catch_c7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_65 .. :try_end_c6} :catch_138
    .catch Ljava/lang/IllegalStateException; {:try_start_65 .. :try_end_c6} :catch_11b
    .catchall {:try_start_65 .. :try_end_c6} :catchall_e4

    goto :goto_56

    .line 4964
    .end local v12    # "filePath":Ljava/lang/String;
    .end local v14    # "theme_file":Ljava/io/File;
    :catch_c7
    move-exception v9

    .line 4965
    .local v9, "ex":Ljava/io/IOException;
    :try_start_c8
    const-string/jumbo v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "MediaPlayer IOException: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e2
    .catchall {:try_start_c8 .. :try_end_e2} :catchall_e4

    goto/16 :goto_56

    .line 4918
    .end local v4    # "volFloat":F
    .end local v9    # "ex":Ljava/io/IOException;
    .end local v13    # "mediaPlayer":Landroid/media/MediaPlayer;
    :catchall_e4
    move-exception v2

    monitor-exit v15

    throw v2

    .line 4945
    .restart local v4    # "volFloat":F
    .restart local v12    # "filePath":Ljava/lang/String;
    .restart local v13    # "mediaPlayer":Landroid/media/MediaPlayer;
    .restart local v14    # "theme_file":Ljava/io/File;
    :cond_e7
    :try_start_e7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/media/audio/ui/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4946
    invoke-static {}, Lcom/android/server/audio/AudioService;->-get2()Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5}, Lcom/android/server/audio/AudioService;->-get3(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v5

    aget-object v5, v5, p1

    const/4 v6, 0x0

    aget v5, v5, v6

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4945
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_119
    .catch Ljava/io/IOException; {:try_start_e7 .. :try_end_119} :catch_c7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e7 .. :try_end_119} :catch_138
    .catch Ljava/lang/IllegalStateException; {:try_start_e7 .. :try_end_119} :catch_11b
    .catchall {:try_start_e7 .. :try_end_119} :catchall_e4

    move-result-object v12

    goto :goto_a2

    .line 4968
    .end local v12    # "filePath":Ljava/lang/String;
    .end local v14    # "theme_file":Ljava/io/File;
    :catch_11b
    move-exception v11

    .line 4969
    .local v11, "ex":Ljava/lang/IllegalStateException;
    :try_start_11c
    const-string/jumbo v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "MediaPlayer IllegalStateException: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_56

    .line 4966
    .end local v11    # "ex":Ljava/lang/IllegalStateException;
    :catch_138
    move-exception v10

    .line 4967
    .local v10, "ex":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "MediaPlayer IllegalArgumentException: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_153
    .catchall {:try_start_11c .. :try_end_153} :catchall_e4

    goto/16 :goto_56
.end method

.method private onUnloadSoundEffects()V
    .registers 8

    .prologue
    .line 4892
    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-get35(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 4893
    :try_start_7
    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-get36(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_7f

    move-result-object v3

    if-nez v3, :cond_11

    monitor-exit v4

    .line 4894
    return-void

    .line 4897
    :cond_11
    :try_start_11
    invoke-static {}, Lcom/android/server/audio/AudioService;->-get2()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v2, v3, [I

    .line 4898
    .local v2, "poolId":[I
    const/4 v1, 0x0

    .local v1, "fileIdx":I
    :goto_1c
    invoke-static {}, Lcom/android/server/audio/AudioService;->-get2()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2c

    .line 4899
    const/4 v3, 0x0

    aput v3, v2, v1

    .line 4898
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 4902
    :cond_2c
    const/4 v0, 0x0

    .local v0, "effect":I
    :goto_2d
    const/16 v3, 0xa

    if-ge v0, v3, :cond_82

    .line 4903
    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-get3(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v3

    aget-object v3, v3, v0

    const/4 v5, 0x1

    aget v3, v3, v5

    if-gtz v3, :cond_41

    .line 4902
    :cond_3e
    :goto_3e
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    .line 4906
    :cond_41
    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-get3(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v3

    aget-object v3, v3, v0

    const/4 v5, 0x0

    aget v3, v3, v5

    aget v3, v2, v3

    if-nez v3, :cond_3e

    .line 4907
    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-get36(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5}, Lcom/android/server/audio/AudioService;->-get3(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v5

    aget-object v5, v5, v0

    const/4 v6, 0x1

    aget v5, v5, v6

    invoke-virtual {v3, v5}, Landroid/media/SoundPool;->unload(I)Z

    .line 4908
    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-get3(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v3

    aget-object v3, v3, v0

    const/4 v5, -0x1

    const/4 v6, 0x1

    aput v5, v3, v6

    .line 4909
    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-get3(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v3

    aget-object v3, v3, v0

    const/4 v5, 0x0

    aget v3, v3, v5

    const/4 v5, -0x1

    aput v5, v2, v3
    :try_end_7e
    .catchall {:try_start_11 .. :try_end_7e} :catchall_7f

    goto :goto_3e

    .line 4892
    .end local v0    # "effect":I
    .end local v1    # "fileIdx":I
    .end local v2    # "poolId":[I
    :catchall_7f
    move-exception v3

    monitor-exit v4

    throw v3

    .line 4912
    .restart local v0    # "effect":I
    .restart local v1    # "fileIdx":I
    .restart local v2    # "poolId":[I
    :cond_82
    :try_start_82
    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-get36(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/SoundPool;->release()V

    .line 4913
    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v5, 0x0

    invoke-static {v3, v5}, Lcom/android/server/audio/AudioService;->-set13(Lcom/android/server/audio/AudioService;Landroid/media/SoundPool;)Landroid/media/SoundPool;
    :try_end_91
    .catchall {:try_start_82 .. :try_end_91} :catchall_7f

    monitor-exit v4

    .line 4891
    return-void
.end method

.method private persistRingerMode(I)V
    .registers 4
    .param p1, "ringerMode"    # I

    .prologue
    .line 4749
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get43(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4750
    return-void

    .line 4752
    :cond_9
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get16(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mode_ringer"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4748
    return-void
.end method

.method private persistVolume(Lcom/android/server/audio/AudioService$VolumeStreamState;I)V
    .registers 7
    .param p1, "streamState"    # Lcom/android/server/audio/AudioService$VolumeStreamState;
    .param p2, "device"    # I

    .prologue
    .line 4736
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get43(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4737
    return-void

    .line 4739
    :cond_9
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-wrap1(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-static {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->-get4(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_19

    .line 4740
    return-void

    .line 4742
    :cond_19
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get16(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    .line 4743
    invoke-virtual {p1, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getSettingNameForDevice(I)Ljava/lang/String;

    move-result-object v1

    .line 4744
    invoke-virtual {p1, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x5

    div-int/lit8 v2, v2, 0xa

    .line 4745
    const/4 v3, -0x2

    .line 4742
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 4735
    return-void
.end method

.method private setAllVolumes(Lcom/android/server/audio/AudioService$VolumeStreamState;)V
    .registers 6
    .param p1, "streamState"    # Lcom/android/server/audio/AudioService$VolumeStreamState;

    .prologue
    .line 4723
    invoke-virtual {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyAllVolumes()V

    .line 4726
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    .line 4727
    .local v0, "numStreamTypes":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "streamType":I
    :goto_9
    if-ltz v1, :cond_2d

    .line 4728
    invoke-static {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->-get4(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v2

    if-eq v1, v2, :cond_2a

    .line 4729
    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get41(Lcom/android/server/audio/AudioService;)[I

    move-result-object v2

    aget v2, v2, v1

    invoke-static {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->-get4(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v3

    if-ne v2, v3, :cond_2a

    .line 4730
    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get40(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyAllVolumes()V

    .line 4727
    :cond_2a
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 4720
    :cond_2d
    return-void
.end method

.method private setDeviceVolume(Lcom/android/server/audio/AudioService$VolumeStreamState;I)V
    .registers 13
    .param p1, "streamState"    # Lcom/android/server/audio/AudioService$VolumeStreamState;
    .param p2, "device"    # I

    .prologue
    const/4 v4, 0x0

    .line 4689
    const-class v1, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v1

    .line 4691
    :try_start_4
    invoke-virtual {p1, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyDeviceVolume_syncVSS(I)V

    .line 4694
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v7

    .line 4695
    .local v7, "numStreamTypes":I
    add-int/lit8 v9, v7, -0x1

    .local v9, "streamType":I
    :goto_d
    if-ltz v9, :cond_50

    .line 4696
    invoke-static {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->-get4(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v0

    if-eq v9, v0, :cond_4d

    .line 4697
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get41(Lcom/android/server/audio/AudioService;)[I

    move-result-object v0

    aget v0, v0, v9

    invoke-static {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->-get4(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v2

    if-ne v0, v2, :cond_4d

    .line 4700
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0, v9}, Lcom/android/server/audio/AudioService;->-wrap4(Lcom/android/server/audio/AudioService;I)I

    move-result v8

    .line 4701
    .local v8, "streamDevice":I
    if-eq p2, v8, :cond_42

    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get10(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 4702
    and-int/lit16 v0, p2, 0x380

    if-eqz v0, :cond_42

    .line 4703
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get40(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v0

    aget-object v0, v0, v9

    invoke-virtual {v0, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyDeviceVolume_syncVSS(I)V

    .line 4705
    :cond_42
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get40(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v0

    aget-object v0, v0, v9

    invoke-virtual {v0, v8}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyDeviceVolume_syncVSS(I)V
    :try_end_4d
    .catchall {:try_start_4 .. :try_end_4d} :catchall_61

    .line 4695
    .end local v8    # "streamDevice":I
    :cond_4d
    add-int/lit8 v9, v9, -0x1

    goto :goto_d

    :cond_50
    monitor-exit v1

    .line 4710
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get7(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v0

    .line 4711
    const/4 v1, 0x1

    .line 4712
    const/4 v2, 0x2

    .line 4716
    const/16 v6, 0x1f4

    move v3, p2

    move-object v5, p1

    .line 4710
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->-wrap36(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 4687
    return-void

    .line 4689
    .end local v7    # "numStreamTypes":I
    .end local v9    # "streamType":I
    :catchall_61
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private setForceUse(II)V
    .registers 5
    .param p1, "usage"    # I
    .param p2, "config"    # I

    .prologue
    .line 4987
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get15(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v1

    monitor-enter v1

    .line 4988
    :try_start_7
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0, p1, p2}, Lcom/android/server/audio/AudioService;->-wrap38(Lcom/android/server/audio/AudioService;II)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_e

    monitor-exit v1

    .line 4986
    return-void

    .line 4987
    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 16
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 5000
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_186

    .line 4999
    :cond_8
    :goto_8
    return-void

    .line 5003
    :sswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/audio/AudioService$VolumeStreamState;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/AudioService$AudioHandler;->setDeviceVolume(Lcom/android/server/audio/AudioService$VolumeStreamState;I)V

    goto :goto_8

    .line 5007
    :sswitch_13
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/audio/AudioService$VolumeStreamState;

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService$AudioHandler;->setAllVolumes(Lcom/android/server/audio/AudioService$VolumeStreamState;)V

    goto :goto_8

    .line 5011
    :sswitch_1b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/audio/AudioService$VolumeStreamState;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/AudioService$AudioHandler;->persistVolume(Lcom/android/server/audio/AudioService$VolumeStreamState;I)V

    goto :goto_8

    .line 5017
    :sswitch_25
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService$AudioHandler;->persistRingerMode(I)V

    goto :goto_8

    .line 5021
    :sswitch_2f
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->onAudioServerDied()V

    goto :goto_8

    .line 5025
    :sswitch_35
    invoke-direct {p0}, Lcom/android/server/audio/AudioService$AudioHandler;->onUnloadSoundEffects()V

    goto :goto_8

    .line 5031
    :sswitch_39
    invoke-direct {p0}, Lcom/android/server/audio/AudioService$AudioHandler;->onLoadSoundEffects()Z

    move-result v9

    .line 5032
    .local v9, "loaded":Z
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_8

    .line 5033
    iget-object v12, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;

    .line 5034
    .local v12, "reply":Lcom/android/server/audio/AudioService$LoadSoundEffectReply;
    monitor-enter v12

    .line 5035
    if-eqz v9, :cond_4f

    :goto_48
    :try_start_48
    iput v1, v12, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;->mStatus:I

    .line 5036
    invoke-virtual {v12}, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;->notify()V
    :try_end_4d
    .catchall {:try_start_48 .. :try_end_4d} :catchall_51

    monitor-exit v12

    goto :goto_8

    :cond_4f
    move v1, v2

    .line 5035
    goto :goto_48

    .line 5034
    :catchall_51
    move-exception v0

    monitor-exit v12

    throw v0

    .line 5042
    .end local v9    # "loaded":Z
    .end local v12    # "reply":Lcom/android/server/audio/AudioService$LoadSoundEffectReply;
    :sswitch_54
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v1, v0}, Lcom/android/server/audio/AudioService;->isStreamMute(I)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 5043
    const-string/jumbo v0, "AudioService"

    const-string/jumbo v1, "Stream muted, skip playback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 5045
    :cond_66
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/AudioService$AudioHandler;->onPlaySoundEffect(II)V

    goto :goto_8

    .line 5051
    :sswitch_6e
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get15(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v1

    monitor-enter v1

    .line 5052
    :try_start_75
    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/android/server/audio/AudioService;->-wrap19(Lcom/android/server/audio/AudioService;Ljava/lang/String;)V
    :try_end_7e
    .catchall {:try_start_75 .. :try_end_7e} :catchall_80

    monitor-exit v1

    goto :goto_8

    .line 5051
    :catchall_80
    move-exception v0

    monitor-exit v1

    throw v0

    .line 5058
    :sswitch_83
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/AudioService$AudioHandler;->setForceUse(II)V

    goto/16 :goto_8

    .line 5062
    :sswitch_8c
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-wrap33(Lcom/android/server/audio/AudioService;)V

    goto/16 :goto_8

    .line 5067
    :sswitch_93
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;

    .line 5068
    .local v7, "connectState":Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget v1, v7, Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;->mType:I

    iget v2, v7, Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;->mState:I

    .line 5069
    iget-object v3, v7, Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;->mAddress:Ljava/lang/String;

    iget-object v4, v7, Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;->mName:Ljava/lang/String;

    iget-object v5, v7, Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;->mCaller:Ljava/lang/String;

    .line 5068
    invoke-static/range {v0 .. v5}, Lcom/android/server/audio/AudioService;->-wrap28(Lcom/android/server/audio/AudioService;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5070
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get6(Lcom/android/server/audio/AudioService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_8

    .line 5075
    .end local v7    # "connectState":Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;
    :sswitch_b1
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1, v0, v2}, Lcom/android/server/audio/AudioService;->-wrap27(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothDevice;I)V

    .line 5076
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get6(Lcom/android/server/audio/AudioService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_8

    .line 5080
    :sswitch_c7
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1, v0, v2}, Lcom/android/server/audio/AudioService;->-wrap26(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothDevice;I)V

    .line 5081
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get6(Lcom/android/server/audio/AudioService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_8

    .line 5085
    :sswitch_dd
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v6

    .line 5086
    .local v6, "N":I
    if-lez v6, :cond_10d

    .line 5088
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v1

    .line 5089
    :try_start_ec
    new-instance v13, Landroid/media/AudioRoutesInfo;

    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    invoke-direct {v13, v0}, Landroid/media/AudioRoutesInfo;-><init>(Landroid/media/AudioRoutesInfo;)V
    :try_end_f5
    .catchall {:try_start_ec .. :try_end_f5} :catchall_10a

    .local v13, "routes":Landroid/media/AudioRoutesInfo;
    monitor-exit v1

    .line 5091
    :goto_f6
    if-lez v6, :cond_10d

    .line 5092
    add-int/lit8 v6, v6, -0x1

    .line 5093
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v6}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v11

    check-cast v11, Landroid/media/IAudioRoutesObserver;

    .line 5095
    .local v11, "obs":Landroid/media/IAudioRoutesObserver;
    :try_start_104
    invoke-interface {v11, v13}, Landroid/media/IAudioRoutesObserver;->dispatchAudioRoutesChanged(Landroid/media/AudioRoutesInfo;)V
    :try_end_107
    .catch Landroid/os/RemoteException; {:try_start_104 .. :try_end_107} :catch_108

    goto :goto_f6

    .line 5096
    :catch_108
    move-exception v8

    .local v8, "e":Landroid/os/RemoteException;
    goto :goto_f6

    .line 5088
    .end local v8    # "e":Landroid/os/RemoteException;
    .end local v11    # "obs":Landroid/media/IAudioRoutesObserver;
    .end local v13    # "routes":Landroid/media/AudioRoutesInfo;
    :catchall_10a
    move-exception v0

    monitor-exit v1

    throw v0

    .line 5100
    :cond_10d
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 5101
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0, v2}, Lcom/android/server/audio/AudioService;->-wrap20(Lcom/android/server/audio/AudioService;I)V

    goto/16 :goto_8

    .line 5106
    .end local v6    # "N":I
    :sswitch_11b
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/server/audio/AudioService;->-wrap22(Lcom/android/server/audio/AudioService;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 5110
    :sswitch_126
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-wrap25(Lcom/android/server/audio/AudioService;)V

    goto/16 :goto_8

    .line 5115
    :sswitch_12d
    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x11

    if-ne v3, v4, :cond_136

    move v1, v0

    .line 5116
    :cond_136
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 5115
    invoke-static {v2, v1, v0}, Lcom/android/server/audio/AudioService;->-wrap23(Lcom/android/server/audio/AudioService;ZLjava/lang/String;)V

    goto/16 :goto_8

    .line 5119
    :sswitch_13f
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService$AudioHandler;->onPersistSafeVolumeState(I)V

    goto/16 :goto_8

    .line 5123
    :sswitch_146
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/server/audio/AudioService;->-wrap21(Lcom/android/server/audio/AudioService;I)V

    goto/16 :goto_8

    .line 5127
    :sswitch_14f
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->onSystemReady()V

    goto/16 :goto_8

    .line 5131
    :sswitch_156
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->onIndicateSystemReady()V

    goto/16 :goto_8

    .line 5135
    :sswitch_15d
    iget v10, p1, Landroid/os/Message;->arg1:I

    .line 5136
    .local v10, "musicActiveMs":I
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get16(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    .line 5137
    const-string/jumbo v1, "unsafe_volume_music_active_ms"

    .line 5138
    const/4 v2, -0x2

    .line 5136
    invoke-static {v0, v1, v10, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_8

    .line 5142
    .end local v10    # "musicActiveMs":I
    :sswitch_16e
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Lcom/android/server/audio/AudioService;->-wrap29(Lcom/android/server/audio/AudioService;II)V

    goto/16 :goto_8

    .line 5146
    :sswitch_179
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1, v0, v2}, Lcom/android/server/audio/AudioService;->-wrap24(Lcom/android/server/audio/AudioService;Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 5000
    :sswitch_data_186
    .sparse-switch
        0x0 -> :sswitch_9
        0x1 -> :sswitch_1b
        0x3 -> :sswitch_25
        0x4 -> :sswitch_2f
        0x5 -> :sswitch_54
        0x6 -> :sswitch_6e
        0x7 -> :sswitch_39
        0x8 -> :sswitch_83
        0x9 -> :sswitch_8c
        0xa -> :sswitch_13
        0xc -> :sswitch_dd
        0xd -> :sswitch_83
        0xe -> :sswitch_11b
        0xf -> :sswitch_126
        0x10 -> :sswitch_12d
        0x11 -> :sswitch_12d
        0x12 -> :sswitch_13f
        0x13 -> :sswitch_146
        0x14 -> :sswitch_35
        0x15 -> :sswitch_14f
        0x16 -> :sswitch_15d
        0x18 -> :sswitch_16e
        0x19 -> :sswitch_179
        0x1a -> :sswitch_156
        0x64 -> :sswitch_93
        0x65 -> :sswitch_b1
        0x66 -> :sswitch_c7
    .end sparse-switch
.end method
